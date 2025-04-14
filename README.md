# AtomicBombRadar

AtomicBombRadar est une application web interactive permettant de visualiser les effets des explosions de bombes atomiques historiques et récentes sur une carte personnalisée. Ce projet est conçu pour les survivalistes et toute personne souhaitant mieux comprendre les impacts des armes nucléaires.

## Fonctionnalités

- **Carte interactive** : Basée sur OpenStreetMap, la carte permet de localiser une ville ou une position personnalisée.
- **Visualisation des bombes** : Sélectionnez parmi un arsenal de bombes atomiques historiques et récentes pour afficher leurs rayons d'explosion et de radiation.
- **Recherche de ville** : Entrez le nom d'une ville pour centrer la carte sur cette localisation.
- **Données dynamiques** : Les informations sur les bombes sont chargées dynamiquement depuis un fichier JSON (`bombs.json`), ce qui facilite leur mise à jour.

## Technologies utilisées

- **Frontend** :
  - HTML, CSS, JavaScript
  - [Leaflet.js](https://leafletjs.com/) pour la carte interactive
  - OpenStreetMap pour les tuiles de la carte
- **Backend** :
  - Node.js pour servir les fichiers et gérer les requêtes
  - Nginx comme serveur web performant et reverse proxy
- **Conteneurisation** :
  - Docker pour déployer l'application avec Node.js et Nginx

## Structure du projet

AtomicBombRadar/ ├── public/ │ ├── index.html # Page principale │ ├── styles.css # Styles CSS │ ├── bombs.json # Données des bombes atomiques │ ├── images/ # Images des bombes │ └── scripts.js # Scripts JavaScript (si séparé) ├── server.js # Serveur Node.js ├── package.json # Dépendances Node.js ├── Dockerfile # Configuration Docker ├── nginx.conf # Configuration Nginx └── README.md # Documentation


## Déploiement avec Docker

L'application est conteneurisée avec Docker et utilise à la fois Node.js et Nginx. Voici les étapes pour construire et exécuter le conteneur :

### 1. Construire l'image Docker

Assurez-vous que Docker est installé sur votre machine, puis exécutez la commande suivante dans le répertoire du projet :

```bash
docker build -t atomicbombradar .

```

### 2. Lancer le conteneur
Une fois l'image construite, lancez le conteneur avec la commande suivante :

```bash
docker run -p 80:80 atomicbombradar
```
