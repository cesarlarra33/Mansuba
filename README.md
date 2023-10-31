# Project Mansuba

La page de spécification du projet :

<https://www.labri.fr/perso/renault/working/teaching/projets/2022-23-S5-Mansuba.php>

La page du projet sur la forge :

https://thor.enseirb-matmeca.fr/ruby/projects/projetss5

La page des projets en général :

<https://www.labri.fr/perso/renault/working/teaching/projets/projets.php>







Quelques indications afin de pouvoir compiler puis exécuter notre projet :


 -> Pour compiler le projet il suffit d'entrer une des lignes de commande suivantes : 
    
    make WIDTH=40 HEIGHT=30  # permet d'imposer des valeurs pour la taille du plateau (largeur et hauteur)
    make project /ou/ make  # les valeurs de HEIGHT et de WIDTH sont celles par défaut (fixées dans le Makefile)


-> Pour exécuter le projet :
    ./project   # permet d'exécuter le projet avec toutes les valeurs par défaut
                # ajouter -t pour imposer le type de victoire de la partie (c pour complexe, s pour simple) 
                  => ./project -t s
                  => ./project -t c
                  (La valeur par défaut est choisie aléatoirement.)
                # ajouter -m pour imposer la valeur de MAX_TURNS (le nombre maximal de tours pour la partie)
                  => ./project -m 10
                  (La valeur par défaut est définie au début du main dans project.c)
                # ajouter -s pour initialiser le générateur aléatoire
                  => ./project -s 156
                  (La valeur par défaut est 0)


-> Pour compiler et exécuter les tests du projet (en une seule commande) :
    make test