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

Tu peux consulter le site web en cliquant sur le lien du port 80 dans PWD.

## Objectif:

L'objectif est de se faire un inventaire et de se préparer une commande Ansible qui va faire cela rapidement sans avoir besoin de te connecter sur ton serveur.


