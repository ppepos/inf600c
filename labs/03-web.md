---
title: Laboratoires Web
---

# Tunnel et proxy

Assurez vous que votre connexion fonctionne correction vers les exercices web des labos.

De votre poste personnel, la commande suivante devrait retourner la page *Vous Etes Perdu ?*:

```bash
curl -x socks5h://localhost:2223 http://workspace.kaa/
```

Même chose avec votre navigateur.

Si ce n'est pas le cas, référez-vous à la section Laboratoires de la page principale. Des chose à vérifier:

 - Vous avez une connexion ssh d'établie avec l'option -D 2223.
 - Chromium: Vous l'avez bien lancé avec l'option proxy-pac
 - Firefox: Vous avez bien configuré comme indiqué et activé le DNS distant.

# Exercices

## Attila

Disponible sur [http://attila.trone.kaa](http://attila.trone.kaa).

### Objectifs

1. Entrez dans la salle du trône
2. Avoir un shell
3. Devenir root

## Shoppe

Disponible sur [http://www.weapon.shoppe.kaa/](http://www.weapon.shoppe.kaa/).

### Objectifs

1. Entrer dans le magasin
2. Trouver l'arme secrète

## Registre

Disponible sur [http://registre.kaa](http://registre.kaa).

### Objectifs

1. Contournez la page d'authentification
2. Trouver le flag qui est caché dans une autre table avec le formulaire niveau 1
3. Obtenir le code secret d'Arthur via le formulaire niveau 2
4. Lire le fichier /flag.txt présent à la racine du serveur hébergeant le SGBD via le formulaire niveau 3

## Back Alley

Disponible sur [http://back.alley.kaa](http://back.alley.kaa).

### Objectifs

1. Connectez-vous en tant que *guest* avec mot de passe *guest* (sans les \*)
2. Devenez admin
3. Récupérez le mot de passe de l'utilisateur admin

Exercices supplémentaires sur les injections SQL: [ctf.hackin.ca](http://ctf.hackin.ca)

# Extra

Exercices suplémentaires.

* http://www.rh.casino-drumond.kaa (CTF CCWC 2017 & TP1 2018)
  Login: «guest», Pass: «guest», Objectif: devenir «admin»
  Flag1 difficulté 0.5
* http://inlock.casino-drumond.kaa (CTF CCWC 2017 & TP1 2018)
  Login: «guest», Pass: «guest», Objectif: devenir «admin»
  Flag1 difficulté 1
* http://gate.of.ganzir.kaa (CTF CCWC 2017 & TP1 2018)
  Login: «guest», Pass: «guest», Objectif: devenir «admin»
  Flag1 difficulté 2
* http://date.kaa (CTF CCWC 2017)
  Flag1 difficulté 1
  Flag2 difficulté 2
* http://marketing.kaa (CTF CCWC 2017)
  Flag difficulté 3

Les excercices qui suivent sont plus difficiles

* http://i.got.id.kaa (CTF CSAW 2016)
* http://wtf.kaa (CTF CSAW 2016)

# Exemples du cours

Exercices du cours

* http://confiance.kaa
* http://verbes.kaa
* http://paquet.kaa
* http://biscuit.kaa
* http://vetements.kaa
* http://croustillant.kaa


