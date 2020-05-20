# Lab 2 - L'entrainement
![alt text](https://media.giphy.com/media/26BRzQS5HXcEWM7du/giphy.gif "Ansible ?")

Pour commencer le lab tu dois avoir réalisé les prérequis expliqués sur la page principale du projet voir ici.

C'est a dire:
- Que tu es connecté sur un node PWD
- Que tu as cloné le dépot de la formation
- ***Que tu es dans le répertoire ./formation-ansible/lab_2/***

## Création du lab:
Pour créer le lab tu dois faire la commande suivante:
>docker-compose up -d
### Commandes utiles:
Supprimer le lab (tu perds tout !!!):
>docker-compose down  

Lister les conteneurs qui sont up:
>docker ps

Tu peux donc supprimer et recréer le lab...

## Contexte:

Tu n'a qu'une seule machine dans ton lab:  

| **Nom** | **IP** | **User** | **Password** | **OS** |
| --- | --- | --- | --- | --- |
| web | 172.28.0.11 | root | ansible | Ubuntu 16.0.4 LTS | 

C'est un serveur web pour montrer au monde entier que c'est bien toi l'élu. Malheureusement tu te fais régulièrement hacker ton site web...

A chaque fois tu dois te reconnecter sur ton serveur et redéployer ton site web.

Tu peux consulter le site web en cliquant sur **OPEN PORT** dans PWD et mettre le port 80.

## Objectif:

L'objectif est de se faire un inventaire et de se préparer une commande Ansible qui va faire cela rapidement sans avoir besoin de te connecter sur ton serveur et d'upload les fichiers de ton site.

## Action à réaliser:
### installer sshpass:
Ansible se connecte en ssh sur les hôtes distant. Pour cela nous avons besoin sur paquet **sshpass** qui n'est pas par défaut sur notre node pwd.

Installation de sshpass:
> apk add sshpass

### Créer ton inventaire:
Nous avons besoin de se créer un inventaire qui aura les informations de connexion à notre serveur.

Nous créons donc un fichier qu'on va appeler inventory:
>touch inventory

Maintenant il faut compléter ton inventaire. Ansible aura besoin de trois variables pour ton host:
- **ansible_host** : L'ip de ton serveur.
- **ansible_ssh_user** : l'utilisateur de connexion.
- **ansible_ssh_pass** : le password de connexion.

Voici une facon de faire ton inventaire, on donne un nom à notre serveur ***web_1*** et sur la même ligne on passe les variables qui lui sont propre.
```
web_1 ansible_host=172.28.0.11 ansible_ssh_user=root ansible_ssh_pass=ansible
```

Quand c'est OK pour toi tu peux tester la connexion avec le module `ping`.  
Il est important de préciser ton fichier d'inventaire avec l'option `-i`et de mettre le groupe que tu souhaites tester à la fin de ta commande.

> ansible -m ping -i inventory web_1

### Déployer ton application:

Le hack a été identifié, le fichier `/var/www/html/index.nginx-debian.html` a été modifié sur ton serveur.
Tu dispose dans le répertoire **/root/formation-ansible/lab_2** d'une sauvegarde de celui-ci. 

Pour déployer a nouveau ton fichier tu peux utiliser le module [copy](https://docs.ansible.com/ansible/latest/modules/file_module.html).

Voici la commande permettant d'utiliser le module copy et déployer notre fichier:
> ansible -m copy -i inventory -a "src=index.nginx-debian.html dest=/var/www/html/index.nginx-debian.html" web_1

Quand c'est OK va vérifier que ton site web est bien modifié en cliquant sur le port 80 à coté de **OPEN PORT** dans PWD.  
Note: Le cache sur PWD fait que c'est pas immédiat à tous les coups.

## Correction:

La correction se trouve dans répertoire `correction`. Tu y trouveras les éléments suivant:
- le fichier `inventory`
- Un script qui lance la commande Ansible

[Go to LAB 3](https://github.com/acoilier/formation_ansible/tree/master/lab_3)
