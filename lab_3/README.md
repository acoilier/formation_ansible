# Lab 3 - L'industrialisation
![alt text](https://media.giphy.com/media/l1BgDIOByniXC/giphy.gif "l'indistrialisation")

Pour commencer le lab tu dois avoir réalisé les prérequis expliqués sur la page principale du projet voir ici.

C'est a dire:
- Que tu es connecté sur un node PWD
- Que tu as cloné le dépot de la formation
- Que tu es dans le répertoire ./formation-ansible/lab_3/

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
| web1 | 172.28.0.12 | root | ansible | Ubuntu 16.0.4 LTS | 
| web2 | 172.28.0.13 | root | ansible | Ubuntu 16.0.4 LTS |
| web3 | 172.28.0.14 | root | ansible | Ubuntu 16.0.4 LTS |

C'est toujours des serveurs web tout neuf.

Tu peux consulter le site web en cliquant sur **OPEN PORT** dans PWD et mettre le port 80.

## Objectif:

L'objectif est de se faire un inventaire et un playbook pour déployer et sécuriser notre application sur les trois serveurs.

## Action à réaliser:
### installer sshpass (Si c'est pas déjà fait):
Ansible se connecte en ssh sur les hôtes distant. Pour cela nous avons besoin sur paquet **sshpass** qui n'est pas par défaut sur notre node pwd.

Installation de sshpass:
> apk add sshpass

### Créer ton inventaire:
Nous avons besoin de se créer un inventaire qui aura les informations de connexion à nos serveurs.

Nous créons donc un fichier qu'on va appeler inventory:
>touch inventory

Maintenant à toi de jouer, complète ton inventaire. Pour t'aider tu peux regardé ce qu'on a fait dans le lab_2.

Quand c'est OK pour toi tu peux tester la connexion avec le module `ping`. 

Tu devrais te retrouver avec: 

```
web_1 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
web_3 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
web_2 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
```
### Déployer ton application:

Maintenant il est temps de faire notre playbook.
> touch deploy_app.yml

1. Nous souhaitons qu'il install le paquet clamav sur tous nos serveur.
2. Nous souhaitons qu'il fasse le déploiement de notre application sur tous nos serveur.

Mêmes application que le Lab2

Quand c'est OK va vérifier que ton site web est bien modifié en cliquant sur le port 80 à coté de **OPEN PORT** dans PWD.  

Note: Le cache fait que c'est pas immédiat à tous les coups.

## Correction:

La correction se trouve dans répertoire `correction`. Tu y trouveras les éléments suivant:
- le fichier `inventory`
- Un script qui lance la commande Ansible
