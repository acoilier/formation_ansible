# Formation Ansible

Cette formation présente l'outil Ansible et aborde les compétences de base pour commancer à l'utiliser. 

Lors de cette formation des Labs permettrons de manipuler Ansible et d'agir sur des serveurs cibles, ces serveurs seront des conteneurs docker éxécutés localement. il est nécessaire d'avoir les connaissances de base d'utilisation d'un système Linux.

## Lien du cours:
- [Présentation du cours]()
- [Vidéo de la présentation]()
___
## Prérequis pour faire les Labs:

Il est possible de réaliser ces Labs directement sur le site [Play Whis Docker](https://labs.play-with-docker.com/).  
Dans ce cas les prérequis ci-dessous sont déja OK.

### En cas d'utilisation d'une machine Linux :
Installation des packets nécessaire sur le système (ici Débian):
>sudo apt-get update  
>sudo apt-get install git docker docker-compose ansible

Téléchargement des fichiers:

>git clone https://github.com/acoilier/formation_ansible.git
___
## Commandes utiles pour les Labs
Il faut se placer dans le répertoire **formation_ansible** afin d'éxécuter les commande suivantes.  

Création du lab avec deux serveurs:
>docker-compose up -d

Supprimer les serveurs du lab:
>docker-compose down

Vérifier que nos conteneurs sont up:
>docker ps

