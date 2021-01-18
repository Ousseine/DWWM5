USE atout_jouer;

/* Liste des pièces avec titre, durée, nom et prénom de l'auteur */

/* Syntaxe relationnelle */

/* SELECT titre, duree, nom, prenom 
FROM piece, ecrire, auteur
WHERE 
    piece.id = ecrire.id_piece AND
    ecrire.id_auteur = auteur.id AND
    duree > 100; */

/* Syntaxe SQL2 */
/* 
SELECT titre, duree, nom, prenom FROM piece
INNER JOIN ecrire ON piece.id = ecrire.id_piece
INNER JOIN auteur ON ecrire.id_auteur = auteur.id
WHERE duree > 100; */

/* SELECT id_piece, id_auteur, nom, prenom FROM auteur
INNER JOIN ecrire ON ecrire.id_auteur = auteur.id; */

/* SELECT id_piece, id_auteur, nom, prenom FROM auteur
LEFT JOIN ecrire ON ecrire.id_auteur = auteur.id
WHERE id_piece IS NULL; */

/* Titre pièce + date représentation + nb spectateurs */
/* SELECT titre, date_representation, nb_spectateurs FROM representation 
INNER JOIN piece ON representation.id_piece = piece.id;

SELECT titre, date_representation, nb_spectateurs FROM piece 
INNER JOIN representation ON representation.id_piece = piece.id; */

/* Bof  */
/* SELECT titre, date_representation, nb_spectateurs FROM representation 
LEFT JOIN piece ON representation.id_piece = piece.id; */

/* Pas glop */
/* SELECT titre, date_representation, nb_spectateurs FROM representation 
RIGHT JOIN piece ON representation.id_piece = piece.id; */


/* Titre pièce + Nom & prénom auteur */

/* SELECT titre, nom, prenom FROM ecrire
INNER JOIN piece ON piece.id = ecrire.id_piece
INNER JOIN auteur ON auteur.id = ecrire.id_auteur; */

/* Listre des pièces sans représentation */

/* SELECT titre FROM piece
LEFT JOIN representation ON piece.id = representation.id_piece
WHERE date_representation IS NULL;  */

SELECT * FROM representation
RIGHT JOIN piece ON piece.id = representation.id_piece
WHERE date_representation IS NULL; 
