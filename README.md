# projet-ROS-robots-industriels

Voici les projets autour de ros developpés par l'aip primeca. 
Ils s'articulent essentiellement autour des robots industriels. 

Les 3 familles sont 
- kuka (en cours de developpement non distribué)
- staubli
- yaskawa

Un driver a été crée pour le robot staubli RX60 (val3). Vous trouverez dans ce dépot , un driver à mettre dans votre robots industriels (Votre baie doit être au minimun en 7.10).
Il ne dépend pas de d'un robot en particulier.
Puis vous avez le paquet ROS qui lui est spécifique au rx60 (il suffira de récupérer la géométrie de votre robots pour faire fonctionner ROS).

Nous avons aussi mis en place un driver pour les périphériques spécifiques :

- automate Scheinder
- camera cognex (en cours de developpement non distribué)
