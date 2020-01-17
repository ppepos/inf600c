# Informations importantes

* [Horaires et locaux](http://www.etudier.uqam.ca/cours?sigle=INF600C#Horaire)
* [Plan de cours](http://syllabus.uqam.ca/files/1546976573_2019_Hiver_INF600C.html)
* [Entente UQAM](EntenteUQAM.pdf) à signer

# Échéancier

Note: les dates ci-dessous ne sont qu'indicatives

## Partie 1.1

| Date | Sujet | Laboratoire | Note |
| --- | --- | --- | --- |
| 01/8 | Introduction | Aucun | |

## Partie 1.2
## Partie 2.1
## Partie 2.2

# Support et contacts

* Professeur: <pepos-petitclerc.philippe@uqam.ca>
* Démonstrateurs et support: [Alexandre Côté Cyr](https://ageei-uqam.slack.com/messages/@barberousse) et [Luis-Gaylor Nobre](https://ageei-uqam.slack.com/messages/@lgnobre)
* Canal de discussion: <https://ageei-uqam.slack.com/messages/inf600c/details/>


# Laboratoires

Les laboratoires ont lieu dans un environnement dédié. Comme nous allons attaquer des services qui sont déployés à l'intérieur de l'UQAM, il est important que tout le monde signe l'[[entente disponible ici|EntenteUQAM.pdf]].

De façon optionnelle, vous pouvez créer un compte anonyme sur [[le scoreboard|https://scoreboard.inf600c.uqam.ca/]] afin de mesurer votre progression dans les exercices. Votre score dans le scoreboard n'a aucune incidence sur votre évaluation dans le cadre du cours.

La connexion à l'environnement se fait via ssh grâce au login et mot de passe qui vous a été envoyé par courriel

~~~
$ ssh -D 2223 LOGIN@workspace.inf600c.uqam.ca
~~~

Pour les services web, l'accès se fait de préférence via le proxy SOCKS5 créé par ssh via l'option -D 2223.

Un fichier d'auto-configuration [[inf600c.pac]] est disponible pour la majorité des navigateurs.

* Pour curl, l'option `-x socks5h://localhost:2223` fait le travail.
  Exemple: 

~~~
curl -x socks5h://localhost:2223 http://workspace.kaa/
~~~

* Chomium utilise la configuration du système. On peut toutefois utiliser l'option `--proxy-pac-url`.
  Exemple:

~~~
chromium --proxy-pac-url=http://info.uqam.ca/~privat/INF600C/inf600c.pac "http://workspace.kaa"
~~~

* Pour Firefox, la configuration est rangée dans: menu > préférences > avancé > réseau > configurer la façon dont Firefox se connecte à Internet > adresse de configuration automatique du proxy > mettre `http://info.uqam.ca/~privat/INF600C/inf600c.pac` dans le champ ; cocher également utiliser un DNS distant lorsque SOCKS v5 est actif

# Ressources

* [[Aide mémoire Pep/8 (version INF600C)|aide-pep8.pdf]] ; site du cours [[INF2170]]

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

* [[INF600C-181-intra-sujet.pdf]] et [[INF600C-181-intra-corrige.pdf]]
* [[INF600C-181-final-sujet.pdf]] et [[INF600C-181-final-corrige.pdf]]
* [[INF600C-191-intra-sujet.pdf]] et [[INF600C-191-intra-corrige.pdf]]

## Exercices

* [[Exploit-Education|https://exploit.education/]] (nebula, protostar, etc.)
* [[Over The Wire|http://overthewire.org]]
* [[Cryptopals|http://cryptopals.com/]]
* [[Ringzer0|https://ringzer0team.com/]]
* [[CTF AGEEI|https://ctf.ageei.uqam.ca/]]

## CTF

* [[CTF Guide|https://trailofbits.github.io/ctf/]]
* [[CTF time|http://ctftime.org]]

## Aide et discussions slack

* [[#INF600C|https://ageei-uqam.slack.com/messages/inf600c/]] - chan du cours
* [[#ctf|https://ageei-uqam.slack.com/messages/ctf/]] - aide pour le CTF de l'AGEEI
* [[#securite|https://ageei-uqam.slack.com/messages/securite/]] - discussion et nouvelles sur la sécurité informatique en général

## Autres liens

* [Montréhack](https://montrehack.ca/) Apprentissage et partage de connaissance sur la sécurité informatique, tous les 3e mercredis du mois.
* [Super Mario World Credits Warp Explained](https://www.youtube.com/watch?v=vAHXK2wut_I) Vidéo sur une exploitation binaire.

