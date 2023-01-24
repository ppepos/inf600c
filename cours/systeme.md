---
title: Exploitation système
---
# Isolation, permissions et secrets

## catsecret0

Cet exercice sera fait interactivement en classe. Au cas ou vous vouliez y revenir, le programme est disponible dans les labs: `/quetes/cours/02-sys/secret0/catsecret`.

```sh
cd /quetes/cours/02-sys/secret0/
./catsecret
```

## catsecret1

Le programme est disponible dans les labs: `/quetes/cours/02-sys/secret1/catsecret`.

```sh
cd /quetes/cours/02-sys/secret1/
./catsecret
```

<details><summary>Indice 1</summary>
<p>Qu'est-ce qui est possible avec la permission <code>r</code> sur un exécutable?</p>
</details>

<details><summary>Indice 2</summary>
<p><code>man ltrace</code></p>
</details>

# Chemins

## catsecret2

Le programme est disponible dans les labs: `/quetes/cours/02-sys/secret2/catsecret`. Nous souhaitons lire le second flag.

```sh
cd /quetes/cours/02-sys/secret2/
ls -al
./catsecret
```

<details><summary>Indice 1</summary>
<p>Quel est le chemin du fichier ouvert par le programme?</p>
</details>

<details><summary>Indice 2</summary>
<p>Par rapport à où?</p>
</details>

<details><summary>Indice 3</summary>
<p>Quel répertoire est <code>.</code>? C'est un chemin relatif, mais relatif à quoi?</p>
</details>

# Ressources

## Pass

Le programme est disponible dans les labs: `/quetes/cours/02-sys/pass/pass`. Ici, nous souhaitons obtenir le message "You are in!". Le code source est dispnible.

```sh
cd /quetes/cours/02-sys/pass
./pass
```

<details><summary>Indice 1</summary>
<p>Voyez-vous une bonne pratique par rapport à la gestion des fichiers qui est manquante.</p>
</details>

<details><summary>Indice 2</summary>
<p>Trouvez-vous une mauvaise gestion d'erreurs?</p>
</details>

<details><summary>Indice 3</summary>
<p>Est-ce que le <code>fopen</code> peut échouer? <code>man fopen</code></p>
</details>

