---
title: INF600C - Accueil
---

# Informations importantes

* [Horaires et locaux](https://etudier.uqam.ca/cours?sigle=INF600C#horaire1)
* [Plan de cours](http://info.uqam.ca/plan_cours/Hiver%202023/INF600C.html)
* [Entente UQAM](https://info.uqam.ca/~privat/INF600C/EntenteUQAM.pdf) à signer
* [Slides](https://github.com/ppepos/inf600c/tree/master/pres)
* [Questions](faq.md)

<!-- * [Page des TPs](tps.md) -->

# Échéancier

Note: les dates ci-dessous ne sont qu'indicatives.

## Partie 1

| Date    | Sujet                  | Exercices                                 | Laboratoire                 | Notes                                 | Extras   |
| ------- | ---------------------- | ----------------------------------------- | --------------------------- | ------------------------------------- | -------- |
| 01/08   | Introduction           | [Exercices](cours/intro.md)               |                             |                                       |          |
| 01/15   | Exploitation système   | [Exercices](cours/systeme.md)             |  [intro](labs/01-intro.md)  |                                       |          |
| 01/22   | Exploitation système   | [Matière Async.](cours/systeme_next.md)   |  [sys](labs/02-systeme.md)  |                                       |          |
| 01/29   | Noyau et Web           |                                           |  Terminer intro et sys      |                                       |          |
| 02/05   | Web                    |                                           |                             |                                       |          |
| 02/12   | Web                    |                                           |                             |                                       |          |
| 02/19   | Web                    |                                           |                             |                                       |          |
| 02/26   | Examen intra           |                                           |                             |                                       |          |
| *03/05* |*N/A*                   | *N/A*                                     |                             | *Semaine de lecture*, Remise TP1 (26) |          |

## Partie 2

| Date    | Sujet                                           | Exercices   | Laboratoire                 | Notes   | Extras   |
| ------- | ----------------------------------------------- | ----------- | --------------------------- | ------- | -------- |
| 03/12   | Rétroingénierie                                 |             |                             |         |          |
| 03/19   | Exploitation binaire                            |             |                             |         |          |
| 03/26   | Exploitation binaire                            |             |                             |         |          |
| 04/02   | Exploitation binaire moderne                    |             |                             |         |          |
| 04/09   | Exploitation binaire moderne et contemporaine   |             |                             |         |          |
| 04/16   | Exploitation binaire contemporaine              |             |                             |         |          |
| 04/23   | Examen final                                    |             |                             |         |          |

# Support et contacts

* Professeur: <pepos-petitclerc.philippe@uqam.ca>
  * Heures de bureau: À déterminer. (PK-5722)
* Démonstrateurs et support: Valesca Vallée (@valesca): <vallee.melissa@uqam.ca>
* Canal de discussion officiel: [Mattermost Officiel](https://mattermost.info.uqam.ca/forum/channels/inf600c)
* Canal de discussion officieux: Il y a un canal sur le discord de l'association étudiante.

# Laboratoires

Les laboratoires ont lieu dans un environnement dédié. Comme nous allons attaquer des services qui sont déployés à l'intérieur de l'UQAM, il est important que tout le monde signe l'[entente disponible ici](https://info.uqam.ca/~privat/INF600C/EntenteUQAM.pdf).

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

* [Page des videos (anciennes sessions)](videos.md)
* [Aide mémoire Pep/8 (version INF600C)](https://info.uqam.ca/~privat/INF600C/aide-pep8.pdf)

## Livres

* J ERICKSON -- Hacking, The Art of Exploitation (2e édition) -- No Starch Press, 2008.
* D STUTTARD, M. PINTO -- The Web Application Hacker’s Handbook: Finding and Exploiting Security Flaws (2e édition) -- Wiley, 2011.
* B SCHNEIER -- Applied Cryptography: protocols, algorithms, and source code in C (2e édition) -- John Wiley & Sons, Inc. New York, NY, USA, 1995.
* B DANG, A. GAZET, E. BACHAALANY, S. JOSSE -- Practical Reverse Engineering: x86, x64 ARM, Windows Kernel, Reversing Tools, and Obfuscation -- Wiley, 2011.
* M SIKORSKI, A. HONIG -- Practical Malware Analysis: The Hands-On Guide to Dissecting Malicious Software -- No Starch Press, 2012.
* T KLEIN -- Bug Hunter’s Diary: A Guided Tour Through the Wilds of Software Security  - No Starch Press, 2011.
* C ANLEY, J. HEASMAN, F. LINDNER, G. RICHARTE -- The Shellcoder’s Handbook: Discovering and Exploiting Security Holes (2e édition) -- Wiley, 2007.
* B NIKKEL -- Practical Forensic Imaging, Securing Digital Evidence with Linux Tools -- No Starch Press, 2016.

Ils sont à la bibliothèque des sciences de l'UQAM et certains sont à la BANQ.

## Anciens examens

* [Intra 2018](exam/INF600C-181-intra-sujet.pdf) et [corrigé](exam/INF600C-181-intra-corrige.pdf)
* [Final 2018](exam/INF600C-181-final-sujet.pdf) et [corrigé](exam/INF600C-181-final-corrige.pdf)
* [Intra 2019](exam/INF600C-191-intra-sujet.pdf) et [corrigé](exam/INF600C-191-intra-corrige.pdf)
* [Final 2022](exam/INF600C-221-final.pdf)
* [Pratique 2024](exam/INF600C-241-final-pratique.pdf)

## Exercices

* [Exploit-Education](https://exploit.education/) (nebula, protostar, etc.)
* [Over The Wire](http://overthewire.org)
* [Cryptopals](http://cryptopals.com/)
* [Ringzer0](https://ringzer0team.com/)
* [CTF AGEEI](https://ctf.ageei.uqam.ca/)

## CTF

* [CTF Guide](https://trailofbits.github.io/ctf/)
* [CTF time](http://ctftime.org)

## Lectures intéressantes

* [Exploitation d'injections SQL par PortSwigger](https://portswigger.net/web-security/sql-injection)

### Anciennes sessions

* [Attaque sur `mt_rand()` de PHP](https://www.ambionics.io/blog/php-mt-rand-prediction)
* [Explication haut-niveau de la vulnérabilité de validation ECC dans `crypt32.dll`](https://medium.com/zengo/win10-crypto-vulnerability-cheating-in-elliptic-curve-billiards-2-69b45f2dcab6)
* [Orange Tsai - A New Era of SSRF - Exploiting URL Parser in Trending Programming Languages!](https://www.youtube.com/watch?v=voTHFdL9S2k)
* [James Kettle - HTTP Desync Attacks](https://portswigger.net/research/http-desync-attacks-request-smuggling-reborn)

## Autres liens

* [Montréhack](https://montrehack.ca/) Apprentissage et partage de connaissance sur la sécurité informatique, tous les 3e mercredis du mois.
* [Super Mario World Credits Warp Explained](https://www.youtube.com/watch?v=vAHXK2wut_I) Vidéo sur une exploitation binaire.
