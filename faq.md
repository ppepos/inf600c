---
title: Questions
---

# Labos

## Pigeon (système)

### Question

La principale.

>Je suis surpris de voir que le `access(R_OK)` fait par le programme ne réussit pas sur le fichier flag alors que le programme est setgid pour pouvoir lire le flag. Qu'est-ce qui se passe avec ça?

Question corollaire.

>Si je crée un fichier dont je suis le seul à pouvoir lire (mode 0600), le programme parvient quand même à lire le fichier. Pourquoi?

### Réponse

Commençons par rappeler le code du programme. Pigeon est un programme setgid dont le groupe propriétaire est `pigeon`. Ce qui lui permet de lire le fichier flag que seul `pigeon` peut lire. Le programme fait une vérification avec `access(3)` sur le fichier demandé afin de s'assurer que l'utilisateur a le droit de lire ce fichier. Ensuite, le programme ouvre le fichier et copie son contenue dans un socket POSIX.

```c
...
if(access(argv[1], R_OK) == 0) {
	...
	fd = open(file, O_RDONLY);
	...
	rc = read(ffd, buffer, sizeof(buffer));
	...
	write(socket_fd, buffer, rc);
	...
}
```

#### SetGID

Souvenons nous du fonctionnement des bits SetUID et SetGID. Un programme SetUID s'exécute avec l'utilisateur propriétaire du fichier en tant qu'utilisateur effectif.

Pour illustrer, voici un petit programme démo qui imprimme son utilisateur effectif.

```c
#define _GNU_SOURCE
#include <unistd.h>
#include <stdio.h>

int main() {
	uid_t ur, ue, us;
	gid_t gr, ge, gs;

	getresuid(&ur, &ue, &us);
	getresgid(&gr, &ge, &gs);

	printf("utilisateur:\treel: %d, effectif: %d\n", ur, ue);
	printf("groupe:\t\treel: %d, effectif: %d\n", gr, ge);
}
```

En positionnant l'exécutable en suid 0 (root), on remarque que l'uid effectif du processus est bien `0 (root)` et que son uid réel reste celui le l'utilisateur actuel (1000).

```
$ id -u
1000
$ ls -aln demo
-rwsr-xr-x 1 0 0 15584 Jan 25 11:43 demo
$ ./demo
utilisateur:	reel: 1000, effectif: 0
groupe:		reel: 1000, effectif: 1000
```

Je vous laisse expérimenter avec le bit sgid. En pratique, on verra un comportement analogue mais sur les gid du processus. Le uid sera inchangé.

#### Access

Où le comportement est surprenant est que `access(3)` retourne que le fichier flag n'est pas lisible par le processus sgid. Aussi, `access(3)` retourne également qu'un fichier m'appartenant et qui n'est lisible que par moi (disons `amoé`) est bel et bien lisible. Pourtant le groupe effectif du processus de pigeon devrait être `pigeon` puisque le bit sgid est positionné. Le tout s'explique à gran coup de *manpage*... `man access.3`

>The checks for accessibility [...] shall be performed using the real user ID in place of the effective user ID and the real group ID in place of the effective group ID.

#### En somme

Illustrons à nouveau avec notre programme exemple. Configurons le programme et les fichiers accessoires pour imiter le déploiement de pigeon.

```
$ ls -aln demo flag amoé
-rw------- 1 1000 1000    17 Jan 25 12:00 amoé
-rwxr-sr-x 1    0  964 15584 Jan 25 11:43 demo
-rw-r----- 1    0  964    15 Jan 25 12:00 flag
$ ./demo
utilisateur:	reel: 1000, effectif: 1000
groupe:		reel: 1000, effectif: 964
```

Lors du `access`, le processus vérifie que soit l'utilisateur **réel** ou le groupe **réel** (1000 ou 1000) peut lire le fichier. Dans ce cas, le `access` retourne qu'il est possible de lire le fichier `amoé` mais pas le fichier flag. Lors du `open`, le processus utilise les permissions de l'utilisateur et du groupe effectifs. Le `open` réussira alors sur `flag` (par le gid 964) et échouera sur `amoé`.
