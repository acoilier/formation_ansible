# **Formation Ansible**
![alt text](https://media.giphy.com/media/11e0gEWxYoSYTK/giphy.gif "Ansible ?")  

Cette formation présente l'outil Ansible et aborde les compétences de base pour commancer à l'utiliser. 

Lors de cette formation des Labs permettrons de manipuler Ansible et de manager plusieur servers, nous utiliserons pour ceci la platforme [Play Whis Docker](https://labs.play-with-docker.com/) comme lab. Il est nécessaire que tu es les connaissances de bases d'utilisation d'un système Linux pour suivre cette formation.

## Lien du cours:
- [Présentation du cours]()
- [Projet github](https://github.com/acoilier/formation_ansible)
- [Play Whis Docker](https://labs.play-with-docker.com/)

## Utilisation de Play Whis Docker :
### Connexion à PWD :
La plateforme PWD est un projet soutenu par Docker afin de faire des Labs Docker gratuitement. Dans notre cas nous n'utiliserons pas docker mais seulement les instances de serveurs qu'il est pôssible de générer. Afin de pouvoir l'utiliser il faut tu est un compte docker, tu peux t'en créer un en suivant le modop ci-dessous:
1. Se connecter sur le site [Play Whis Docker](https://labs.play-with-docker.com/).  
2. Cliquer sur **Login** puis **docker**  
3. Si vous avez un compte Docker vous pouvez l'utiliser sinon il faudra en créer un en cliquant sur **sign up**.  
### Utilisation de PWD:
Quand tu es connecté, tu as accès pour 4H au Labs avant sa destruction. Il sera possible de le relancer autant de fois que tu le souhaites mais note bien que tu repars de zéro a chaque fois.  

Commance par te créer une intance en cliquant sur **ADD NEW INSTANCE**. Tu as en suite la possibilité de taper tes commandes directement dans l'interface web, cependant je te conseil de te connecter dessus directement en SSH avec le l'adresse qui t'es donné dans le récap du haut de la page (pour pouvoir faire des tabulation).  
Si t'es sur Windows t'as **putty.exe** ou le [nouveau terminal Microsoft](https://www.microsoft.com/fr-fr/p/windows-terminal-preview/9n0dx20hk701?activetab=pivot:overviewtab) qui éxécute une instance [Windows Subsystem Linux](https://docs.microsoft.com/fr-fr/windows/wsl/install-win10), pour WSL je te prévient c'est un peu long à installer (du powershell et un reboot) garde le pour plus tard si c'est pas déja opérationnel pour toi ;)

Bon la on est pas mal, tu as accès à ton serveur et tu peux en ajouter d'autres cliquant sur **ADD NEW INSTANCE**.  

Maintenant si tu est comme moi tu tape **ll** pour lister le contenu d'un répertoire, AAHHH y'a pas les Alias. Tu tape **nano** pour modifier un fichier ou **apt/yum** pour installer un package, rien ne fonctionne t'es deg !!! Tu te dis: "Ca commance je vais galérer", **ne t'inquiete pas ca va bien se passer** on va justement s'occuper de ca mais avec Ansible tant qu'a faire, histoire de ne pas avoir a se retaper le bouleau a chaque connexion à PWD.

>***Bon à savoir :*** Sur la platforme PWD les serveurs utilisés sont des Alpine Linux. Il faudra donc installer les pakages avec la commande apk, voir exemple ci-dessous pour l'installation d'Ansible.

Installation Ansible:
```
$ apk add ansible
```
## Récupération du dépot sur Github:

Clone le dépot de la formation dans ton home directory avec la commande ci-dessous:
```
$ git clone https://github.com/acoilier/formation_ansible.git
```
C'est bon t'es prêt pour commancer les labs, let's go !!!
