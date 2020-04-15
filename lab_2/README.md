# Lab 2 - L'entrainement
![alt text](https://media.giphy.com/media/26BRzQS5HXcEWM7du/giphy.gif "Ansible ?")

Pour commencer le lab tu dois avoir réaliser les prérequis expliqués sur la page principale du projet voir ici.

C'est a dire:
- Que tu es connecté sur un node PWD
- Que tu as cloné le dépot de la formation
- Que tu es dans le répertoire ./formation-ansible/lab_2/

## Création du lab:
Pour créer le lab tu dois faire la commande suivante:
>docker-compose up -d
### Commandes utiles:
Supprimer le lab (tu perds tout !!!):
>docker-compose down  

Lister les conteneurs qui sont up:
>docker ps

Tu peux donc supprimer et recréer le lab a ta guise...

## Contexte:

Tu n'a qu'une seule machine dans ton lab:  

| **Nom** | **IP** | **User** | **Password** | **OS** |
| --- | --- | --- | --- | --- |
| web | 172.28.0.10 | root | ansible | Ubuntu 16.0.4 LTS | 

C'est un serveur web pour montrer au monde entier que c'est bien toi l'élu. Malheureusement tu te fais régulièrement hacker ton site web...

A chaque fois tu dois te reconnecter sur ton serveur et redéployer une version propre de tan application.

Tu peux consulter le site web en cliquant sur **OPEN PORT** dans PWD et mettre le port 80.

## Objectif:

L'objectif est de se faire un inventaire et de se préparer une commande Ansible qui va faire cela rapidement sans avoir besoin de te connecter sur ton serveur.

## Action à réaliser:
### insatller sshpass:
Ansible se connecte en ssh sur les hôtes distant. Pour cela nous avons besoin sur paquet **sshpass** qui n'est pas par défaut sur notre node pwd.

Installation de sshpass:
> apk add sshpass

### Créer ton inventaire:
Nous avons besoin de se créer un inventaire qui aura les information de connexion à notre serveur.

Nous créons donc un fichier qu'on va appeler inventory:
>touch inventory

Maintenant à toi de jouer, complète ton inventaire. Pour t'aider un peu sache que pour se connecter Ansible aura besoin de trois variable pour ton host:
- **ansible_host** : L'ip de ton serveur.
- **ansible_ssh_user** : l'utilisateur de connexion.
- **ansible_ssh_pass** : le password de connexion.

Quand c'est OK pour toi tu peux tester la connexion avec le module `ping`.  
Il est important de préciser ton fichier d'inventaire avec l'option `-i`

### Déployer ton application:

Le hack a été identifié, le fichier `/var/www/html/index.nginx-debian.html` a été modifié.
Tu dispose dans le répertoire **lab_2** d'une sauvegarde de celui-ci. 

Pour déployer a nouveau ton fichier tu peux utiliser le module [copy](https://docs.ansible.com/ansible/latest/modules/file_module.html).

Quand c'est OK va vérifier que ton site web est bien modifié en cliquant sur le port 80 à coté de **OPEN PORT** dans PWD.

## Correction:

La correction se trouve dans répertoire `correction`. Tu y trouveras les éléments suivant:
- le fichier `inventory`
- Un script qui lance la commande Ansible
