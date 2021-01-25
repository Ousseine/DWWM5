/* Clés étrangères */


/* Syntaxe globales

CREATE TABLE table1 (
    id      INT AUTO_INCREMENT,
    ...
    PRIMARY KEY(id)
);

CREATE TABLE table1b (
    id      INT AUTO_INCREMENT,
    ...
    PRIMARY KEY(id)
);

CREATE TABLE table2 (
    id          INT AUTO_INCREMENT,
    ...
    id_table1   INT,
    id_table1b   INT,
    PRIMARY KEY(id),
    Syntaxe 1
    FOREIGN KEY(id_table1) REFERENCES table1(id),
    Syntaxe 2
    CONSTRAINT fk_table2_table1b
        FOREIGN KEY(id_table1b) REFERENCES table1b(id)
); */

USE revisions;

CREATE TABLE IF NOT EXISTS travailler (
    id                  INT AUTO_INCREMENT,
    annee_embauche      INT,
    nb_heures           INT NULL,
    id_entreprise       INT,
    id_employe          INT,
    PRIMARY KEY(id) 
   
    /* Seront ajoutées après l'insertion des valeurs de la table */
    /* CONSTRAINT fk_travailler_employe
        FOREIGN KEY (id_employe) REFERENCES employe(id),
    CONSTRAINT fk_travailler_entreprise
        FOREIGN KEY (id_entreprise) REFERENCES entreprise(id) */
);

/* Peuplement des données */
/* Ajout des lignes dans 'travailler' avec les valeurs provenant de 'employe' */
/* INSERT INTO travailler (annee_embauche, nb_heures, id_entreprise, id_employe) 
    (SELECT annee_embauche, NULL, id_entreprise, id FROM employe ); */

/* Ajout des clés étrangères */
/* Syntaxe 1 */
/* ALTER TABLE travailler
    ADD FOREIGN KEY (id_entreprise) REFERENCES entreprise(id); */

/* Syntaxe 1 */
/* ALTER TABLE travailler
    ADD CONSTRAINT fk_travailler_employe
        FOREIGN KEY (id_employe) REFERENCES employe(id);       */


/* Affiche le script coorepondant à la création de la table */
/* SHOW CREATE TABLE travailler; */

/* Suppression de la clé étrangère */
/* Supprime la contrainte de clé, mais pas l'index associé */
/* ALTER TABLE travailler DROP FOREIGN KEY travailler_ibfk_1; */
/* Et la recrée */
/* ALTER TABLE travailler
    ADD CONSTRAINT fk_travailler_entreprise
        FOREIGN KEY (id_entreprise) REFERENCES entreprise(id); */

/* On peut regrouper dans le même ALTER TABLE */
/* ALTER TABLE travailler 
    DROP FOREIGN KEY travailler_ibfk_1,
    ADD CONSTRAINT fk_travailler_entreprise
        FOREIGN KEY (id_entreprise) REFERENCES entreprise(id); */

/* ALTER TABLE employe DROP CONSTRAINT fk_employe_entreprise; */

/* Modification de la contrainte de clé étrangère */
/* ALTER TABLE travailler 
    DROP FOREIGN KEY fk_travailler_entreprise;
ALTER TABLE travailler 
    ADD CONSTRAINT fk_travailler_entreprise
        FOREIGN KEY (id_entreprise) REFERENCES entreprise(id) */
        /* ON DELETE RESTRICT par défaut = NO ACTION  */
        /* ON DELETE SET NULL */
        /* ON DELETE CASCADE */
/* ;  */


SELECT * FROM travailler;

START TRANSACTION;

    /* Supression des lignes dans employe puis dans entreprise */
    /* DELETE FROM travailler WHERE id_entreprise=1; */
    /* DELETE FROM entreprise WHERE id=1; */

    /* ON DELETE SET NULL */
    DELETE FROM entreprise WHERE id=1;

SELECT * FROM travailler;
SELECT * FROM entreprise;

ROLLBACK;
