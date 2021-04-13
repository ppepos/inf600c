# Pwn Classique (suite)

Les exercices pour la section sont disponibles sur workspace dans `/cours/05-pwn`.

## `pass_nx` Flags 1-4 (Réchauffement)

1. Tentez d'obtenir les mêmes 4 flags que pour `pass` mais sur le programme `pass_nx`.
2. Qu'est-ce qui fait en sorte que chacun de vos exploits marche ou pas.

## `pass_nx` Les flags manquants

Obtenez les flags manquants pour `pass_nx`.

<details><summary>Indice 1</summary>
<p>Cherchez à réutiliser du code déjà présent dans le programme pour arriver à vos fins.</p>
</details>

<details><summary>Indice 2</summary>
<p>La libc a surement une (ou des) fonctions qui fait ce que vous souhaitez.</p>
</details>

<details><summary>Indice 3</summary>
<p>Il faut préparer le cadre d'appel à la fonction. (Les arguments sur la pile)</p>
</details>

## `pass_64_nx`

1. Obtenez les flags 1-3. (Reréchauffement)
2. Obtenez le flag 4. (plus intéressant)
    1. Il faut encore placer les bons arguments à `system` pour faire l'appel.
    2. Vous avez accès à `ROPgadget --binary pass_64_nx`.

<details><summary>Indice</summary>
<p>Un article sur la stratégie à mettre en oeuvre: https://pop.rdi.sh/rop-exploits/</p>
</details>

