# Boîte à outils

## Questions à se poser
- Sur quoi ai-je le contrôle?
- Qu'est-ce que ma zone de contrôle influence-t-elle?
- Qu'est-ce que je cherche à obtenir?

## Sur quoi avons-nous le contrôle ?
L'utilisateur d'un programme détermine l'intrant et récupère l'extrant.
L'exécution d'un programme est dépendante de son environnement. 
Dans certain cas, on peut déterminer quelles seront les variables d'environnement et le répertoire courant. 

## Concepts théoriques à maîtriser
Les chemins relatifs sont sujets à vulnérabilité, car un attaquant peut berner l'«esprit du programme» 
en utilisant des liens symboliques et en modifiant la variable d'environnement «PATH».

**SETUID/SETGID**
Normalement, Un utilisateur d'un système ne peut interagir qu'avec les fichiers/dossiers avec lesquels il a les permissions appropriées. Dans certains cas, un exécutable peut afficher une permissions ***s*** au lieu de ***x***. Cela signifie que l'exécution du programme considérera le propriétaire comme utilisateur et/ou groupe effectif.
Il faut distinguer utilisateur/groupe effectif et réel.

**TOCTOU** *(condition de course)*
Il vaut mieux gérer une erreur que de demander la permission et exécuter en deux étapes distinctes. Ce genre de bug peut se produire lors de l'utilisation du *setuid*.


## Commandes Bash utiles

### Pour obtenir de l'information
- **man**
- ltrace
- strace
- strings
- env
- id
- whoami
- which

### Pour manipuler dossiers et fichiers
- ln
- mktemp
- /dev/null

### Extra
Les section [redirection](https://www.man7.org/linux/man-pages/man1/bash.1.html#REDIRECTION) et [grammaire](https://www.man7.org/linux/man-pages/man1/bash.1.html#SHELL_GRAMMAR) de la manpage de bash peuvent être utilise pour faciliter la prise en main du contenu du cours.
