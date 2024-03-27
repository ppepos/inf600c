# TP - INF600C

Les travaux pratiques consistent à résoudre des exercices de sécurité du style laboratoires et CTF.

## Travail à réaliser

Les TPs sont réalisés en équipe d'un (seul) ou en équipe de deux.
Nous vous suggérons fortement les équipe de deux.
L'équipe doit rester la même pour tous les exercices d'un même TP.

Pour chaque TP, une liste d'exercices à réaliser est fournie.
L'accès aux exercices se fait par la même procédure que pour les laboratoires.

Pour vous aider, nous fournissons quelques exemples de [writeups](writeups.md). 
### Document à produire

L'équipe devra produire un document PDF de 10 pages **maximum** contenant les *write-ups* des solutions des exercices. Ce document devra contenir:

* L'analyse des artefacts et l’identification des indices, fragilités et autres choses louches (indépendamment du fait que cela aboutisse à quelque chose ou pas)
* Les recherches bibliographiques et documentaires effectuées. Vous indiquerez les liens ou références, et un succinct résumé de l'information pertinente extraite (éventuellement vide).
* Les tentatives et actions mises en œuvre par rapport aux systèmes, la description des effets obtenus et la discussion par rapport aux effets initialement attendus (desfois, ça ne marche pas pour telle ou telle raison).
* Une liste justifiée des CWE associées aux vulnérabilités trouvées.
* Les flags obtenus (et une éventuelle remarque sur leurs contenus).
* Une proposition de correction des systèmes, sous forme:

	* des patches des fichiers sources et de configurations (sous forme de diffs unifiés)
	* d'explications de modifications et améliorations à mettre en œuvre par le fournisseur

### Critères d'évaluations

Le document devra démontrer que les étudiants ont:

* Compris le fonctionnement des programmes à analyser/exploiter.
* Identifié des vulnérabilités précises.
* Su déterminer une approche d'exploitation raisonnable et réaliste.
* Construit et expliqué des payloads et des exploits originaux.
* Entièrement détaillé leur approche qui puisse être comprise et rejouée par le lecteur/correcteur.

La simplicité de l'exploitation (et l'absence de sur-ingénierie) sera aussi prise en considération dans la notation.

Toute attaque par force brute doit également être justifiée:

* identification claire de l'information ou de l'événement visé ;
* assurance qu'il n'y a pas de meilleur moyen de trouver cette information ou de causer cet événement ;
* estimation (et optimisation) de la probabilité de succès de l'attaque.

### Code, payloads et artefacts

Tout code utilisé pour résoudre les problèmes doit être inclus en annexe. En annexe signifie que le code ne compte pas parmi les 10 pages.

Le code inclut dans le document doit être lisible, correctement indenté, correctement paginé.

## Dates et remise du TP1

La limite de taille pour le document à rendre est de 10 pages.

Les instructions sont dans:

* Répertoire `/quetes/tp1`
* Lisez le fichiers `/quetes/tp1/README` pour les instructions.

La remise doit être électronique (pdf).

* Au plus tard le lundi 26 février, 12h dans le répertoire «`tp1_remise`» dans le home de votre utilisateur sur le serveur workspace des laboratoires, vous remettrez:
	* Le fichier pdf de votre rapport
	* Vos payloads et autres scripts (ceux en annexe)
	* S’il y a aussi un Makefile et un README c’est encore mieux.
* Faites bien attention au nom du répertoire, les TPs sont récoltés par un script.
<!-- * Au cours suivant, soit le 29 mars, vous remettrez la version imprimée de votre rapport. Vous y incluerez aussi les versions imprimées de vos scripts et payloads. -->

## Dates et remise du TP2

La limite de taille pour le document à rendre est de 10 pages.

Les instructions sont dans:

* Répertoire `/quetes/tp2`
* Lisez le fichiers `/quetes/tp2/*/README*` pour les instructions.

La remise doit être électronique (pdf).

* Au plus tard le 25 avril, 12h00 (midi) dans le répertoire «`tp2_remise`» dans le home de votre utilisateur sur le serveur workspace des laboratoires, vous remettrez:

	* Le fichier pdf de votre rapport
	* Vos payloads et autres scripts (ceux en annexe)
	* S’il y a aussi un Makefile et un README c’est encore mieux.

* Faites bien attention au nom du répertoire, les TPs sont récoltés par un script.

<!--
* Vous remettrez également la version imprimée de votre rapport. Vous avez trois options:
	* Au département d'informatique *avant 16h le 30 avril*
	* Au cours du 24 avril
-->

## Dates et remise du TPS

Les modalités sont les mêmes que détaillées [ici](https://info.uqam.ca/~privat/INF600C/tps/) à l'exception de:

 * La date de remise est fixée au 30 avril avant 16h.
 * La version papier est à remettre dans la chute à travaux du département d'informatique (PK, 4e étage près des ascenseurs)

Voici également une liste CTFs préauthorisés. Si vous souhaitez participer à un CTF qui n'est pas dans cette liste, faites le approuver au préalable.
Vous trouverez plus d'information sur chacun sur [CTF Time](https://ctftime.org) (site web, style, anciens défis pour vous préparer, inscription, etc.).

```
Fri Feb  2 04:00:00 PM EST 2024 "DiceCTF 2024 Quals" ^1
Fri Feb  9 08:00:00 AM EST 2024 "0xL4ugh CTF 2024"
Fri Feb 16 11:00:00 PM EST 2024 "LA CTF 2024"
Sat Feb 24 07:00:00 AM EST 2024 "bi0sCTF 2024" ^1
Fri Mar  8 07:00:00 AM EST 2024 "Pearl CTF"
Fri Mar  8 07:00:00 PM EST 2024 "WxMCTF 2024"
Fri Mar 15 12:00:00 PM EST 2024 "KalmarCTF 2024"
Fri Mar 15 04:00:00 PM EST 2024 "1753CTF 2024"
Fri Mar 22 07:00:00 PM EST 2024 "LINE CTF 2024"
Sat Mar 23 11:00:00 AM EST 2024 "JerseyCTF IV"
Sat Mar 30 10:00:00 AM EST 2024 "VolgaCTF 2024 Qualifier"
Fri Apr  5 05:00:00 PM EST 2024 "TAMUctf 2024"
```

^1: Mi-ours, mi-scorpion et re-mi-ours derrière (difficile, mais bien)
