# Lab 1 - Le commencement
![alt text](https://media.giphy.com/media/TTJYZ8tRHPsfS/giphy.gif "Ansible ?")

Pour commencer le lab tu dois avoir réaliser les prérequis expliqués sur la page principale du projet voir ici.

C'est a dire:
- Que tu es connecté sur un node PWD
- Que tu as cloné le dépot de la formation
- Que tu es dans le répertoire ./formation-ansible/lab_1/

## Contexte:

Tu n'a qu'une seule machine c'est le node sur le quel tu es, c'est une image docker très basic basée sur Alpine Linux. Tu ne peux presque rien faire dessus mais ca va allez ne t'inquiète pas.

## Objectif:

Ce serveur sera ton serveur qui aura Ansible d'installé. C'est depuis celui-ci que nous managerons les serveurs de nos prochain Lab. On va donc installer Ansible et l'utiliser en local pour configurer notre espace de travail.

## Actions à réaliser:
### Installer Ansible:
On va utiliser l'installation d'Ansible qui est disponible dans le dépot officiel de la distribution. C'est très souvent le cas...
> apk add ansible

Voila... Simple non ?
### Tester Ansible en local:
Maintenant on va tester une connection en ansible vers notre machine local. Pour faire cela, nous allons utiliser la commande `ansible` avec le module `ping`. on va l'appeler comme argument à l'option `-m` et spécifier l'hôte sur le quel on souhaite agir, ici `localhost`.

> ansible -m ping localhost  

Attention ce n'est pas un ping réseau, en réalité Ansible se connecte en ssh sur lui même et éxécute un script python. Si ca fonctionne le script répond `pong`

Voici la réponse que tu dois avoir:

```
localhost | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
```

Pas d'inquiétude pour le **[WARNING]** c'est normale on a pas d'inventaire.
### Ajouter un Alias pour la commande `ls`:
Pour ajouter cet alias il faut modifier le fichier caché `.profile` qui se trouve dans notre home `/root`. Nous souhaitons ajouter une ligne à celui-ci, il existe déja un alias pour `vi` a l'intérieur que nous allons prendre pour exemple. 

On souaite donc ajouter `alias ll='ls -la'`. Pour cela on va utiliser le module `lineinfile` et lui passer les arguments qui vont bien avec l'option `-a`
> ansible -m lineinfile -a "path=/root/.profile line='alias ll=\\'ls -la\\''" localhost  

Résultat attendu:
```
localhost | CHANGED => {
    "backup": "",
    "changed": true,
    "msg": "line added"
}
```

Maintenant tu peux allez voir le contenu du fichier pour vérifier, la line doit se trouver à la fin. `cat /root/.profile`

### Tester de jouer une deuxième fois la même commande:
Maintenant rappel la commande et éxécute la à nouveau pour voir le comportement.

Résultat attendu:

```
localhost | SUCCESS => {
    "backup": "",
    "changed": false,
    "msg": ""
}
```
La line est déja présente dans le fichier, ansible ne fait donc aucune action. C'est ca l'idempotence, le status de la tache est en **SUCCESS** et la valeur **changed** est égale à **false**.

Maintenant tu peux allez voir à nouveau le contenu du fichier pour vérifier que rien n'a changé. `cat /root/.profile`

On peut donc maintenant recharger le profile en faisant `su -` et en testant notre alias `ll`.

### Installer nano via Ansible
Maintenant trouves comment installer `nano` en local via ansible. 
Pour t'aider tu peux faire ce que tu vas faire très souvent avec Ansible, taper dans Google: `ansible [CE_QUE_JE_VEUX_FAIRE]`. Ton bonheur est certainement dans le 5 premiers résultats, si c'est pas le cas c'est que tu ne fais pas la bonne recherche.
