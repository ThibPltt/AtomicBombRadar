#### A compté de cet été, le gouvernement français fournira à chaque citoyen un manuel de survie en cas de guerre. Etant donné des évènements récents et en cours, il n'est pas inconsevable de se retrouver dans un tel évènement. 

#### Je vais créer un site web utilisant Node.js permettant de proposer une solution à tous les survivalistes.
#### Une carte, à la localisation personnalisé, et un arsenal de bombes atomiques historiques et récentes avec leurs rayons d'explosions et de radiations. Cela vous permettra peut-être de construire un abris au bon endroit en attendant le bon moment.

##### Je commence d'abord par créer la page html, css, js
##### J'initialise node

##### Je créé un Dockerfile incluant le projet Node afin de le porter sur le web.

##### J'ajoute nginx, un serveur web, permettant de répondre efficacement aux requêtes HTTPS avec un grand nombre de connexions simultanées.
##### Je modifie mon Dockerfile pour y intégrer à la fois Node et nginx, pour déployer le site web. Malheureusement, lors du portage le fond de carte OpenStreetMap ne s'est pas déployé, ce qui est surement dû à la taille ou à la propriété de l'API.
