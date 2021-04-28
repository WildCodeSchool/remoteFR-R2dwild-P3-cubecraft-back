
PROJET HIGHCUBE - PARTIE BACK-END

#Etape 1 / Prérequis

Avoir installer sur son poste :
- MYSQL,
- GIT,
- VSCODE,
- NODE,
- NPM,

Une bonne machine ;)

#Etape 2 / Récupération du projet 

Cloner le projet sur son poste :
- Git clone https://github.com/WildCodeSchool/remoteFR-R2dwild-P3-cubecraft-back


#Etape 3 / Installation du backend 

Pour avoir les bonnes ressources il faut :
- se placer dans le répertoire /remoteFR-R2dwild-P3-cubecraft-back,
- lancer la commande npm install,
- créer un fichier ".env" à la racine en suivant le modèle ".envSample",

#Etape 4 / Installation de la base de données

Pour lancer la base de données en local il faut :
- créer une base de données avec le nom 'highcuber' commande sql -> "create database highcuber",
- ensuite lancer la commande -> sql "use highcuber',
- récupérer le fichier bdd_16_04_2021.sql dans le dossier bdd,
- installer dans mysql ce fichier avec la commande "source bdd_16_04_2021.sql"

#Etape 5 / Lancement du backend

Pour lancer la partie backend (gestion des données, mysql, express...) il faut :
- npm start.

Si tout fonctionne correctement vous devriez avoir le message "Express server is running"



