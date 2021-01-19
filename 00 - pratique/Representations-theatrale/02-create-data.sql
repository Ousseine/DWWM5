USE atout_jouer;

INSERT INTO auteur (nom, prenom, date_naissance ) VALUES 
    ( 'Baffie', 'Laurent', '1958-04-18'),
    ( 'Balasko', 'Josiane', '1950-04-15'),
    ( 'Ruquier', 'Laurent', '1963-02-23'),
    ( 'Duthuron', 'Christophe', '1973-03-03'),
    ( 'Muriel', 'Robin', '1955-08-02'),
    ( 'Palmade', 'Pierre', '1968-03-23');

/* Syntaxe 2  : */
INSERT INTO organisateur VALUES 
    ( NULL, 'Ticipe', 'Jean', 'FR'),
    ( NULL, 'Zeblouze', 'Agathe', 'FR'),
    ( NULL, 'Rouanna', 'Marie', 'BE'),
    ( NULL, 'Diote', 'Kelly', 'GB');

/* Caractère d'échappement */
INSERT INTO acteur (nom, prenom, adresse, date_naissance )VALUES 
    ( 'Ahwawk', 'Tom', 'rue de la gare', '1958-04-18'),
    ( 'Croche', 'Sarah', 'place du marché', '1950-04-15'),
    ( 'Suijireste', 'Kenji', 'place de l\'église','1963-02-23'),
    ( 'Yonnaise', 'Emma', 'rue de la mairie', '1968-03-23'),
    ( 'Haba', 'Bart', 'impasse des pommiers', '1968-03-23'),
    ( 'Agine', 'Jim', 'quai de la Marne', '1968-03-23');

INSERT INTO piece (titre, duree, date_creation )VALUES 
    ( 'Les Bonobos', 105, '2011-09-09'),
    ( 'Toc toc', 105 , '2005-12-13'),
    ( 'Un point c\'est tout !', 100, '2008-09-18'),
    ( 'L\'Ex-femme de ma vie', 100, '1988-10-05'),
    ( 'Nuit d\'ivresse', 110, '1985-01-01'),
    ( 'Le père Noël est une ordure', 130 , '1979-01-01'),
    ( 'Grosse Chaleur', 95 , '2004-09-29'),
    ( 'Je préfère qu\'on reste amis', 100 , '2014-01-24'),
    ( 'La presse est unanime', 90 , '2002-01-01'),
    ( 'Si c\'était à refaire', 95 , '2005-01-01'),
    ( 'Le Comique', 140 , '2008-10-09'),
    ( 'Fugueuses', 70 , '1968-03-23'),
    ( 'Ils s\'aiment', 120 , '1997-03-27'),  
    ( 'Ils se re-aiment', 110 , '1968-03-23'),
    ( 'Ils se sont aimés', 140 , '2001-01-01'),
    ( 'Pierre et fils', 100, '2006-01-21');


INSERT INTO ecrire (id_auteur, id_piece, principal) VALUES 
    (1,1,true),
    (1,2,true),
    (1,3,true),
    (2,4,true),
    (2,5,true),
    (2,6,true),
    (3,7,true),
    (3,8,true),
    (3,9,true),
    (3,10,true),
    (4,12,false),
    (5,14,false),
    (6,11,true),
    (6,12,true),
    (6,13,true),
    (6,14,true),
    (6,15,true),
    (6,16,true);


INSERT INTO representation (description, date_representation, nb_spectateurs, id_organisateur, id_piece ) VALUES
( 'Description', '2021-01-01', 10, 1, 1),
( 'Description', '2021-01-02', 20, 1, 2),
( 'Description', '2021-01-03', 30, 2, 3),
( 'Description', '2021-01-04', 40, 2, 4),
( 'Description', '2021-01-05', 50, 2, 1),
( 'Description', '2021-01-06', 60, 2, 2),
( 'Description', '2021-01-07', 70, 1, 3),
( 'Description', '2021-01-08', 80, 4, 4),
( 'Description', '2021-01-09', 90, 1, 5),
( 'Description', '2021-01-10', 100, 1, 5),
( 'Description', '2021-01-11', 110, 1, 6),
( 'Description', '2021-01-12', 120, 1, 6),
( 'Description', '2021-01-13', 130, 2, 6),
( 'Description', '2021-01-14', 140, 2, 6);
