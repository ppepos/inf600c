---
title: INF600C - Laboratoire 1
---

# Entente UQAM

Envoyez moi un courriel, avec l'entente en pièce jointe, qui dit que vous acceptez les termes de l'entente. Ça agira à titre de signature.

* [Entente UQAM](https://info.uqam.ca/~privat/INF600C/EntenteUQAM.pdf)
* Mon courriel: <pepos-petitclerc.philippe@uqam.ca>

# Introduction à l'environnement

## Connexion

Vous devriez tous avoir reçu vos accès par courriel. Si ce n'est pas le cas, demandez les au démonstrateur. La procédure de connexion est sur la page d'accueil du cours. Vous n'avez pas besoin de l'option `-D 2223` pour aujourd'hui, une simple connexion ssh suffira.

## Répertoires importants

### Home

Vous avez tous un utilisateur et un répertoire `home` (`/home/<votre_nom_dutilisateur`) que vous pouvez utiliser comme bon vous semble. 

### `tmp`

Le répertoire `/tmp` est un bon endroit pour déposer des fichiers utilitaires à vos exploits. Vous ne pouvez pas directement lister le contenu de `/tmp` mais vous pouvez y faire un répertoire de travail (`mkdir /tmp/lab1_pepp` par exemple) et vous en servir comme bon vous semble.

### Quêtes

Les exercices sont toujours dans les sous-répertoires de `/quetes`. Vous y trouverez les laboratoires et les exercices vus en cours. Vous pouvez donc refaire par vous-même les chemins d'exploitation montrés en classe. Les exercices (ou catégories d'exercices) sont généralement accompagnés d'un fichier `README` qui dit où trouver chacun des exercices.

## Outils importants

Assurez-vous d'être à l'aise avec *Netcat* (`nc`, `ncat`, `netcat`) et *cURL* (`curl`).

# Laboratoire 1

Les quêtes du labo 1 sont tous disponibles dans le répertoire `/quetes/01-intro`. Pour certains défis, des fichiers vous sont donnés pour vous aider (code source ou autre).

Voici la liste des quêtes obligatoires:

| Defis          | Port |
|================|======|
| restriction    | 4141 |
| parler         | 4142 |
| ordre          | 4143 |
| moustaches     | 4144 |
| ratification   | 4145 |
| ratification2  | 4146 |

Et voici la liste des quêtes optionnelles que l'on vous suggère tout de même d'essayer.

| Defis          | Port |
|================|======|
| provencal      | 4161 |
| kvm.io         | 4162 |
| botte_secrete  | 4163 |
| grelotine      | 4164 |
| echelle        | `ctf.hackin.ca` |
| lac_de_l_ombre | 4166 |
| bridge_of_death| 4167 |
| adoubement     | 4168 |

## Instructions spécifiques

### Restriction

Le service est disponible sur le port local 4141 (`nc localhost 4141`). Voici des accès initiaux: `Blaise:s3cr3tUm`. Le code source du fichier `Restriction.java` est disponible.

### Parler

Le service est disponible sur le port local 4142. Bien que le fichier source soit disponible, vous devez passer par le réseau pour avoir les permissions de lire le flag.

### Ratification 2

Le flag est caché dans le code source de l'application cette fois. Utilisez la version `_pub` pour vous informer.
