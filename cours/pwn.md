# Pwn Classique

Les exercices pour la section sont disponibles sur workspace dans `/cours`.

## Pass 1

Pass 1 sera fait en démonstration.
Par contre, à titre de révision, je vous suggère de prendre la peine de refaire Pass 1 dans un débogueur afin de bien comprendre ce qui se passe en mémoire. 
Assurez vous d'être en mesure de bien identifier les variables sur la pile et l'effet du débordement sur celles-ci.

## Pass 2

En travaillant encore sur le binaire `pass`, faites retourner `true` à la fonction `checkpass`.

```c
int checkpass(void) {
        int ok = 0;
        char in[32];
        puts("Entrez votre mot de passe:");
        fgets(in, 1024, stdin);
        puts("Vérification en cours, ne pas éteindre votre ordinateur.");
        if(strcmp(in, PASS)==0)
                ok = 0xC0FEFE;
        puts("Vérification complétée.");
        if(ok)
                puts("Bon mot de passe; voici un premier FLAG d'encouragement: " FLAG1);
        else
                puts("Mauvais mot de passe.");
        return ok == 0xC0FEFE;
}
```

<details><summary>Indice</summary>
<p>Attention au boutisme.</p>
</details>

## Pass 3

Toujours avec le programme `pass`, obtenez le flag 3 en appelant la fonction `getflag3`.

<details><summary>Indice</summary>
<p>Souvenez-vous que l'adresse de retour de la fonction (adresse de la prochaine instruction à exécuter après la fin de la fonction) est empilée lors de l'appel de la fonction.</p>

## Devoir

Refaire les exercices de pass 1, 2 et 3 sur le programme `pass_64`.
