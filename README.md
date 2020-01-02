# Formation Ansible

Cette formation présente l'outil Ansible et aborde les compétences de base pour commancer à l'utiliser. 

Lors de cette formation des labs permettrons de manipuler Ansible et d'agir sur des serveurs cibles ,ces serveurs seront des conteneurs docker éxécutés localement. il est nécessaire d'être sur un système Linux (Debian 9 dans notre cas) et d'installer quelques prérequis pour suivre ces lab.

## Lien du cours:
- [Présentation du cours]()
- [Vidéo de la présentation]()

## Prérequis

Installation des packets nécessaire sur le système (ici Débian):
>sudo apt-get update  
>sudo apt-get install git docker docker-compose ansible

Téléchargement des fichiers:

>git clone https://github.com/acoilier/formation_ansible.git

## Commandes utiles pour les Labs
Il faut se placer dans le répertoire **formation_ansible** afin d'éxécuter les commande suivantes.  

Création du lab avec deux serveurs:
>docker-compose up -d --scale srv-lab=2

Supprimer les serveurs du lab:
>docker-compose down -d

