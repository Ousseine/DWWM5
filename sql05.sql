
CHAR(nb) : la colonne occupera nb caractères sur le disque
VARCHAR(nb) : la colonne n'occupera que l'espace nécessaire

azertiop

CHAR(32)       32 caractères
VARCHAR(32)    8 catactères

1 - si une table contient des colonnes en CHAR et en VARCHAR => toutes les colonnes en CHAR sont transformées en VARCHAR
2 - si une table contient des VARCHAR inférieurs à VARCHAR(3) => ces VARCHAR seront transformés en CHAR
    VARCHAR (nb) occupe nb caractères + 2 (longueur)