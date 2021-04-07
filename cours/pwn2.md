# Pwn Classique (suite)

Les exercices pour la section sont disponibles sur workspace dans `/cours`.

## Shellcode

Désassemblez et comprenez le comportement du shellcode suivant: 

```
31 c0 31 d2 50 68 2f 2f 73 68 68 2f 62 69 6e 89 e3 50 53 89 e1 b0 0b cd 80
```

Tracez l'exécution du shellcode (état de la pile et des registres) et assurez vous de bien comprendre son fonctionnement.
La commande suivante vous sera surement utile.

`objdump -b binary -m i386 -D -M intel <shellcode.bin>`

## Pass 4

En travaillant encore sur le binaire `pass`, faites exécuter votre shellcode.

<details><summary>Indice 1</summary>
<p>On cherche à écrire un shellcode en mémoire. Où pouvez-vous l'écrire?</p>
</details>

<details><summary>Indice 2</summary>
<p>L'instruction `NOP (\x90)` pourrait-elle être utile lors du calcul de branchement? Comment?</p>
</details>

<details><summary>Indice 3</summary>
<p>`\x90\x90\x90\x90\x90` versus `\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90` quelle est la différence d'éffet observable?</p>
</details>

## Devoir

Refaire les exercices avec un shellcode 64 bits puis exploitez le programme `pass_64`.
