# Premier lab Ansible

Pour commencer le lab tu dois avoir réaliser les prérequis expliqués sur la page principale du projet voir ici.

C'est a dire:
- Que tu es connecté sur un node PWD
- Que tu as cloné le dépot de la formation
- Que tu es dans le répertoire ./formation-ansible/lab_1/

## Création du lab:
Pour créer le lab tu dois faire la commande suivante:
>docker-compose up -d
### Commandes utiles:
Supprimer le lab:
>docker-compose down  

Lister les conteneurs qui sont up:
>docker ps

Tu peux donc créer et supprimer le lab a ta guise...

## Contexte:

Tu n'a qu'une seule machine dans ton lab:  

| **Nom** | **IP** | **User** | **Password** | **OS** |
| --- | --- | --- | --- | --- |
| rebond | 172.28.0.10 | root | ansible | Ubuntu 16.0.4 LTS | 

## Objectif:

Ce serveur sera ton serveur qui aura ansible d'installé. C'est depuis celui-ci que nous managerons les serveurs qui
