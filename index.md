---
title: INF600C - Accueil
---

# Informations importantes

* [Horaires et locaux](http://www.etudier.uqam.ca/cours?sigle=INF600C#Horaire)
* [Plan de cours](http://info.uqam.ca/plan_cours/Hiver%202022/INF600C.html)
* [Entente UQAM](https://info.uqam.ca/~privat/INF600C/EntenteUQAM.pdf) à signer
* [Slides](https://github.com/ppepos/inf600c/tree/master/pres)
* [Page des videos](videos.md)
* [Page des TPs](tps.md)

# Échéancier

Note: les dates ci-dessous ne sont qu'indicatives.

## Partie 1

| Date  | Sujet                | Exercices                               | Laboratoire                   | Notes                 | Extras                                  |
|-------|----------------------|-----------------------------------------|-------------------------------|-----------------------|-----------------------------------------|
| 01/12 | Introduction         | [Exercices](cours/intro.md)             | N/A                           |                       |                                         |
| 01/19 | Introduction suite   |                                         | [intro](labs/01-intro.md)     |                       |                                         |
| 01/26 | Exploitation système | [Exercices](cours/systeme.md)           | intro (suite)                 |                       |                                         |
| 02/02 | Exploitation système |                                         | [système](labs/02-systeme.md) |                       |                                         |
| 02/09 | Exploitation système | [Matière Async.](cours/systeme_next.md) | [outils](outils.md)           |                       |                                         |
| 02/16 | Web                  |                                         |                               | Explications TPs      |                                         |
| 02/23 | Web                  |                                         |                               | ~~Remise TP1: 02/27~~ |                                         |
| 03/02 | N/A                  | N/A                                     |                               | Semaine de lecture    |                                         |
| 03/09 | Examen intra         |                                         |                               | Remise TP1: 03/13     | [1337UP CTF](https://ctf.intigriti.io/) |

## Partie 2

| Date  | Sujet                                                       | Exercices | Laboratoire | Notes             | Extras                                                                                                                       |
|-------|-------------------------------------------------------------|-----------|-------------|-------------------|------------------------------------------------------------------------------------------------------------------------------|
| 03/16 | Web Serveur et client                                       |           |             |                   |                                                                                                                              |
| 03/23 | Web Client et conférence Félix (@sideni)                    |           |             |                   | Évaluation des enseignements débute le 28                                                                                    |
| 03/30 | Rétroingénierie et conférence Luis (@hellnia)               |           |             |                   | [UMass CTF](https://ctftime.org/event/1561), [Midnight Sun CTF](https://ctftime.org/event/1474)                              |
| 04/06 | Exploitation binaire et conférence Alexandre (@barberousse) |           |             |                   | [Nullcon CTF](https://nullcon.net/berlin-2022/ctf/), [PlaidCTF (Difficile)](https://plaidctf.com/)                           |
| 04/13 | Exploitation binaire                                        |           |             | Remise TP2: 04/17 | Évaluation des enseignements termine le 10, [dCTF](https://dragonsec.si/en/dctf), [TAMUctf](https://ctftime.org/event/15570) |
| 04/20 | Examen final                                                |           |             |                   |                                                                                                                              |
| 05/01 | Exploitation binaire contemporaine                          |           |             | Remise TPS        |                                                                                                                              |

<!--

| Date  | Sujet                        | Laboratoire | Notes          | Extras                                          |
|-------|------------------------------|-------------|----------------|-------------------------------------------------|
| 03/24 | Rétro-ingénierie ([Exercices](cours/rev.md)) |             |                | VolgaCTF (27 mars)                              |
| 03/31 | Rétro-ingénierie suite + Exploitation binaire ([Exercices](cours/pwn.md)) |             |                | [ångstromCTF (2-7 Avril)](https://angstromctf.com/)|
| 04/07 | Exploitation binaire ([Exercices](cours/pwn2.md)) |             |                | Midnight Sun CTF (9 avr)                        |
| 04/14 | Contre-mesures modernes ([Exercices](cours/rop.md)) |             |                | PlaidCTF (16 avr)                               |
| 04/21 | Contre-mesures modernes      |             |                | Montréhack (20 avr 19h)                         |
| 04/28 | Exploitation binaire moderne |             |                |                                                 |
| 05/05 | Examen final                 |             |                | Northsec (20-28 mai)                            |

-->

# Support et contacts

* Professeur: <pepos-petitclerc.philippe@uqam.ca>
* Démonstrateurs et support: 
* Canal de discussion officiel: [Mattermost Officiel](https://mattermost.info.uqam.ca/forum/channels/inf600c)
* Canal de discussion officieux: Il y a un canal sur le slack de l'asso étudiante.

# Laboratoires

Les laboratoires ont lieu dans un environnement dédié. Comme nous allons attaquer des services qui sont déployés à l'intérieur de l'UQAM, il est important que tout le monde signe l'[entente disponible ici](https://info.uqam.ca/~privat/INF600C/EntenteUQAM.pdf).

De façon optionnelle, vous pouvez créer un compte anonyme sur [le scoreboard](http://scoreboard.kaa/) afin de mesurer votre progression dans les exercices. Votre score dans le scoreboard n'a aucune incidence sur votre évaluation dans le cadre du cours. Le scoreboard est hébergé à l'interne, il faut donc suivre la procédure pour les [services web](#Services-web) pour pouvoir y accéder.

La connexion à l'environnement se fait via ssh grâce au login et mot de passe qui vous a été envoyé par courriel

~~~
$ ssh -D 2223 LOGIN@workspace.inf600c.uqam.ca
~~~

## Services web

Pour les services web, l'accès se fait de préférence via le proxy SOCKS5 créé par ssh via l'option -D 2223.

Un fichier d'auto-configuration [inf600c.pac](http://info.uqam.ca/~privat/INF600C/inf600c.pac) est disponible pour la majorité des navigateurs.

* Pour curl, l'option `-x socks5h://localhost:2223` fait le travail.
  Exemple:

~~~
curl -x socks5h://localhost:2223 http://workspace.kaa/
~~~

* Chromium utilise la configuration du système. On peut toutefois utiliser l'option `--proxy-pac-url`.
  Exemple:

~~~
chromium --proxy-pac-url=http://info.uqam.ca/~privat/INF600C/inf600c.pac "http://workspace.kaa"
~~~

* Pour Firefox, la configuration est rangée dans: menu > préférences > avancé > réseau > configurer la façon dont Firefox se connecte à Internet > adresse de configuration automatique du proxy > mettre `http://info.uqam.ca/~privat/INF600C/inf600c.pac` dans le champ ; cocher également utiliser un DNS distant lorsque SOCKS v5 est actif

<!--

### Configuration de Burp

Le logiciel [Burp](https://portswigger.net/burp/communitydownload) peut être utile pour la partie Web. Ce [document](https://uqam-my.sharepoint.com/:b:/g/personal/cote_cyr_alexandre_uqam_ca/EXYnhHzaGYpAooX7f4yv1wUBtCooEjnIWWU8GiUE5SkADQ?e=nsKBrM) vous explique comment le configurer avec le proxy du cours.

-->

# Ressources

* [Aide mémoire Pep/8 (version INF600C)](https://info.uqam.ca/~privat/INF600C/aide-pep8.pdf)

## Livres

* J ERICKSON -- Hacking, The Art of Exploitation (2e édition) -- No Starch Press, 2008.
* D STUTTARD, M. PINTO -- The Web Application Hacker’s Handbook: Finding and Exploiting Security Flaws (2e édition) -- Wiley, 2011.
* B SCHNEIER -- Applied Cryptography: protocols, algorithms, and source code in C (2e édition) -- John Wiley & Sons, Inc. New York, NY, USA, 1995.
* B DANG, A. GAZET, E. BACHAALANY, S. JOSSE -- Practical Reverse Engineering: x86, x64 ARM, Windows Kernel, Reversing Tools, and Obfuscation -- Wiley, 2011.
* M SIKORSKI, A. HONIG -- Practical Malware Analysis: The Hands-On Guide to Dissecting Malicious Software -- No Starch Press, 2012.
* T KLEIN -- Bug Hunter’s Diary: A Guided Tour Through the Wilds of Software Security  - No Starch Press, 2011.
* C ANLEY, J. HEASMAN, F. LINDNER, G. RICHARTE -- The Shellcoder’s Handbook: Discovering and Exploiting Security Holes (2e édition) -- Wiley, 2007.
* B NIKKEL -- Practical Forensic Imaging, Securing Digital Evidence with Linux Tools --
 No Starch​ ​Press,​ ​2016.

Ils sont à la bibliothèque des sciences de l'UQAM et certains sont à la BANQ.

## Anciens examens

* [Intra 2018](exam/INF600C-181-intra-sujet.pdf) et [corrigé](exam/INF600C-181-intra-corrige.pdf)
* [Final 2018](exam/INF600C-181-final-sujet.pdf) et [corrigé](exam/INF600C-181-final-corrige.pdf)
* [Intra 2019](exam/INF600C-191-intra-sujet.pdf) et [corrigé](exam/INF600C-191-intra-corrige.pdf)

## Exercices

* [Exploit-Education](https://exploit.education/) (nebula, protostar, etc.)
* [Over The Wire](http://overthewire.org)
* [Cryptopals](http://cryptopals.com/)
* [Ringzer0](https://ringzer0team.com/)
* [CTF AGEEI](https://ctf.ageei.uqam.ca/)

## CTF

* [CTF Guide](https://trailofbits.github.io/ctf/)
* [CTF time](http://ctftime.org)

## Aide et discussions slack

* [#INF600C](https://ageei-uqam.slack.com/messages/inf600c/) - chan du cours
* [#ctf](https://ageei-uqam.slack.com/messages/ctf/) - aide pour le CTF de l'AGEEI
* [#securite](https://ageei-uqam.slack.com/messages/securite/) - discussion et nouvelles sur la sécurité informatique en général

## Lectures intéressantes

* [Orange Tsai - A New Era of SSRF - Exploiting URL Parser in Trending Programming Languages!](https://www.youtube.com/watch?v=voTHFdL9S2k)
* [James Kettle - HTTP Desync Attacks](https://portswigger.net/research/http-desync-attacks-request-smuggling-reborn)

### Anciennes sessions

* [Attaque sur `mt_rand()` de PHP](https://www.ambionics.io/blog/php-mt-rand-prediction)
* [Explication haut-niveau de la vulnérabilité de validation ECC dans `crypt32.dll`](https://medium.com/zengo/win10-crypto-vulnerability-cheating-in-elliptic-curve-billiards-2-69b45f2dcab6)

## Autres liens

* [Montréhack](https://montrehack.ca/) Apprentissage et partage de connaissance sur la sécurité informatique, tous les 3e mercredis du mois.
* [Super Mario World Credits Warp Explained](https://www.youtube.com/watch?v=vAHXK2wut_I) Vidéo sur une exploitation binaire.
