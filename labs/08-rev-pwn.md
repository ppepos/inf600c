# Rétroingénierie
## Introduction
Les exercices à faire son disponibles sur workspace dans `/quetes/08-rev/README.md`. Suivez l'ordre dans l'énoncé.
# Exploitation Binaire
## Introduction
Les exercices pré-ASLR sont disponibles sur une seconde machine (vuln-04-pwn) qui est accessible à partir de workspace. Cette machine servira pour tous les exercices de pwning avec ASLR désactivée. Pour y accéder, connectez-vous normalement à worspace, puis à partir de workspace connectez vous avec le même nom d'utilisateur à `vuln-04-pwn`.

```
ssh USER@workspace.inf600c.uqam.ca
ssh USER@vuln-04-pwn
```

## Exercices pré-ASLR
Vous pouvez faire les exercices disponibles dans `/quetes/09-pwn/`

### Garde
`/quetes/09-pwn/garde`
`nc localhost 4941`
### Carte
`/quetes/09-pwn/carte`
`nc localhost 4942`
### Rouge
`/quetes/09-pwn/rouge`
`nc localhost 4943`

Rouge était initialement fait pour se réussir avec ASLR activé. Vous pouvez donc également l'essayer directement sur workspace lorsque nous aurons couvert ASLR en classe.

## Exercices additionnels
Phoenix est une machine virtuelle d'apprentissage d'exploitation binaire populaire. Nous vous l'avons rendue disponible dans le lab également. À partir de workspace, vous pouvez vous connecter à `phoenix` avec vos même accès.

```
ssh USER@workspace.inf600c.uqam.ca
ssh USER@phoenix
```

À l'exception des accès utilisateurs `root` et `user`, vous pouvez utiliser l'information du *Getting Started* officiel. Sur le site de documentation, vous aurez également le code source de chaque exercice.

[Site officiel.](http://exploit.education/phoenix/getting-started/)
[Premier exercice](http://exploit.education/phoenix/stack-zero/)

Vous pouvez vous rendre aussi loin que vous voulez.
