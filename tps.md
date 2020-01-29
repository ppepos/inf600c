# TP - INF600C

Les travaux pratiques consistent à résoudre des exercices de sécurité du style laboratoires et CTF.

## Travail à réaliser

Les TP sont réalisés en équipe d'un (seul) ou en équipe de deux.
L'équipe doit rester la même pour tous les exercices d'un même TP.

Pour chaque TP, une liste d'exercices à réaliser est fournie.
L'accès aux exercices se fait par la même procédure que pour les laboratoires.

### Document à produire

L'équipe devra produire un document PDF de 10 pages **maximum** contenant les *write-ups* des solutions des exercices. Ce document devra contenir:

* L'analyse des artefacts et l’identification des indices, fragilités et autres choses louches (indépendamment du fait que cela aboutisse à quelque chose ou pas)
* Les recherches bibliographiques et documentaires effectuées. Vous indiquerez les liens ou références, et un succinct résumé de l'information pertinente extraite (éventuellement vide).
* Les tentatives et actions mises en œuvre par rapport aux systèmes, la description des effets obtenus et la discussion par rapport aux effets initialement attendus (des fois, ça ne marche pas pour telle ou telle raison).
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

La simplicité de l'exploitation (et l'absence de sur-ingénierie) sera aussi prise en considération dans notation.

Toute attaque par force brute doit également être justifiée:

* identification claire de l'information ou de l'événement visé ;
* assurance qu'il n'y a pas de meilleur moyen de trouver cette information ou de causer cet événement ;
* estimation (et optimisation) de la probabilité de succès de l'attaque.

### Code, payloads et artefacts

Tout code utilisé pour résoudre les problèmes doit être inclus en annexe. En annexe signifie que le code ne compte pas parmi les 10 pages.

Le code inclut dans le document doit être lisible, correctement indenté, correctement paginé.￼

## Dates et remise du TP1

La limite de taille pour le document à rendre est de 10 pages. 

Les instructions sont dans:

* Répertoire `/quetes/tp1`
* Lisez le fichiers `/quetes/tp1/README` pour les instructions.

La remise doit être électronique (pdf) ET analogique (impression).

* Analogique: le document papier doit être remis au plus tard le **19 février** à la fin du laboratoire.
* Numérique: dans le répertoire «`tp1_remise`» dans le home de votre utilisateur sur le serveur workspace des laboratoires, vous remettrez:

	* Le fichier pdf de votre rapport (celui imprimé)
	* Vos payloads et autres scripts (ceux en annexe)
	* S’il y a aussi un Makefile et un README c’est encore mieux.
	* Note: Indiquez sur la copie le répertoire de quel utilisateur contient les fichiers.
