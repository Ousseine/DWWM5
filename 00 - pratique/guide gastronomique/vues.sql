USE atout_jouer;

CREATE OR REPLACE VIEW vue1 
AS SELECT titre AS Title, duree, nom AS Name, prenom FROM piece
INNER JOIN ecrire ON piece.id = ecrire.id_piece
INNER JOIN auteur ON ecrire.id_auteur = auteur.id;

/* SHOW TABLES; */


SELECT * FROM vue1 WHERE Name='Palmade' ORDER BY duree;
