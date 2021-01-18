/* 1 - Création de la base de données  */

/* Uniquement en phase de mise au point */
DROP DATABASE IF EXISTS atout_jouer;
CREATE DATABASE IF NOT EXISTS atout_jouer; 

USE atout_jouer;

/* 2 - Création des tables */

/* Définition du moteur de stockage par défaut */
SET storage_engine = MyISAM;

/* PRIMARY KEY : Syntaxe 1 */
CREATE TABLE IF NOT EXISTS acteur (
    id              INT PRIMARY KEY AUTO_INCREMENT, 
    nom             VARCHAR(50), 
    prenom          VARCHAR(50), 
    adresse         VARCHAR(255), 
    date_naissance  DATE
);

/* PRIMARY KEY : Syntaxe 2 */
CREATE TABLE IF NOT EXISTS organisateur (
    id              INT AUTO_INCREMENT, 
    nom             VARCHAR(50), 
    prenom          VARCHAR(50), 
    nationalite     CHAR(2),
    PRIMARY KEY( id )
);

CREATE TABLE IF NOT EXISTS auteur (
    id              INT AUTO_INCREMENT, 
    nom             VARCHAR(50), 
    prenom          VARCHAR(50), 
    date_naissance  DATE,
    PRIMARY KEY( id )
);

CREATE TABLE IF NOT EXISTS piece (
    id              INT AUTO_INCREMENT, 
    titre           VARCHAR(50), 
    duree           INT, 
    date_creation   DATE,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS representation (
    id                      INT AUTO_INCREMENT, 
    description             VARCHAR(128), 
    date_representation     DATE, 
    nb_spectateurs          INT, 
    id_organisateur         INT, 
    id_piece                INT,
    PRIMARY KEY (id)
);

/* Clé composée */
CREATE TABLE IF NOT EXISTS participe (
    id_acteur           INT, 
    id_representation   INT, 
    role                VARCHAR(50),
    PRIMARY KEY ( id_acteur, id_representation )
);

CREATE TABLE IF NOT EXISTS ecrire (
    id_auteur           INT, 
    id_piece            INT,   
    principal           BOOLEAN,
    PRIMARY KEY (id_auteur, id_piece)
); 










/* 3 - Peupleument : ajout des données */



/* acteur = (id_acteur INT, nom VARCHAR(50), prenom VARCHAR(50), adresse VARCHAR(255), date_naissance DATE);
organisateur = (id_organisateur INT, nom VARCHAR(50), prenom VARCHAR(50), nationalite CHAR(2));
auteur = (id_auteur INT, nom VARCHAR(50), prenom VARCHAR(50), date_naissance DATE);
piece = (id_piece INT, titre VARCHAR(50), duree INT, date_creation DATE);
representation = (id_representation INT, description VARCHAR(128), date_representation DATE, nb_spectateurs INT, #id_organisateur, #id_piece);
participe = (#id_acteur, #id_representation, role VARCHAR(50));
ecrire = (#id_auteur, #id_piece, principal LOGICAL); */
