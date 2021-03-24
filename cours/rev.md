# Rétro-ingénierie

## Désassemblage

### Introduction

À l'aide de l'aide mémoire Pep/8, désassemblez manuellement le programme suivant: [pin1](bin/pin1.pepo)

[Aide mémoire Pep/8 (version INF600C)](https://info.uqam.ca/~privat/INF600C/aide-pep8.pdf)

### Le reverse, c'est difficile

À l'aide du même aide mémoire Pep/8, désassemblez le programme suivant, puis faites-en la trace.

```
C0 FE FE 16 00 0D 70 65 70 38 00 41 00 06 00 0B 58
```

## Pin 2: Des bogues

Désassemblez le programme Pep/8 suivant puis trouvez le bon PIN: [pin2](bin/pin2.pepo)

<details>
  <summary>Réponse (spoiler)</summary>
```
         STRO    pin,d       
         DECI    n,d
         LDA     1616,i      
         LDX     4,i         
         CALL    get_pin     
         CPA     n,d         
         BRNE    k           
         LDA     n,d         
         CALL    print
         STOP       
k:       STRO    err,d
         STOP                

get_pin: SUBSP   2,i         
         STA     0,s         
l:       CPX     0,i         
         BRLE    z           
         ASRA                
         ADDA    1,i         
         ADDA    0,s         
         STA     0,s         
         SUBX    1,i         
         BR      l           
z:       LDA     0,s         
         RET2                

print:   SUBSP   2,i         
         STRO    flag,d      
         DECO    0,s         
         CHARO   '}',i       
         CHARO   '\n',i
         RET2                
```
</details>

## PIN 3 Ignorez le PIN et obtenez le flag dans chacun des trois programmes suivants:

 - [pin3.pepo](bin/pin3.pepo)
 - [pin3](bin/pin3)
 - [pin3_64](bin/pin3_64)

## Aide gdb/peda

Exécuter

* `run args`: exécute depuis le début avec des arguments
* `start` (peda): exécute jusqu'au début du main
* `si`, `stepi`: exécute une instruction, entre dans les fonctions
* `ni`, `nexti`: exécute une instruction, n'entre pas dans les fonctions
* `finish`: exécute jusqu'à la fin de la fonction
* `nextcall` (peda): exécute jusqu'au prochain `call`
* `nextjmp` (peda): exécute jusqu'au prochain `jmp`
* `c`, `continue`: reprend l'exécution
* `b *adresse`: met un point d’arrêt

Divers

* entrée: refait la dernière commande
* `q`, `quit`: quitter
* `h cmd`, `help cmd`: affiche l'aide
* `peda`: affiche les commandes peda

Inspecter

* `p expr`: calcule et affiche une expression (en hexa par défaut)
* `p/d expr`: pareil mais en décimal (d'autres formats existent)
* `x adresse`: affiche le contenu d'une adresse
* `x/3db adresse`: affiche **3** **d**écimaux, chacun d'un octet (**b**yte) 
* `telescope adresse` (peda): affiche et déréférence 
* `pdisass foncton` (peda): désassemble une fonction
* `bt`, `backtrace`: affiche la pile d'appels

Modifier

* `set $reg = expr`: modifier la valeur d'un registre
* `goto adresse`: modifier le compteur ordinal
* `skipi` (peda): ignorer une instruction (ça fait des bonds)
* `return`: quitter de force une fonction sans l'exécuter
* `patch adress valeur` (peda): écrire une valeur en mémoire
