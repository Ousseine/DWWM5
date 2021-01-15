-- Objectif : Suivre les mouvements bancaires entre les différents clients d'un même organisme

-- MCD : Modèle Conceptuel de Données

-- - Créer une table des clients : clients( id, nom, prenom, solde )
-- - Créer une table des mouvements : mouvements( id, id_client, valeur_credit, valeur_debit, date_mvt ) 

USE dwwm5;

-- DROP TABLE IF EXISTS clients;

-- CREATE TABLE IF NOT EXISTS clients (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     nom VARCHAR(64),
--     prenom VARCHAR(64),
--     solde DECIMAL(10,2)
-- ) ENGINE=MyISAM;

-- DROP TABLE IF EXISTS mouvements;

-- CREATE TABLE IF NOT EXISTS mouvements (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     id_client INT,
--     valeur_credit DECIMAL(10,2),
--     valeur_debit DECIMAL(10,2),
--     date_mvt DATE
-- ) ENGINE=MyISAM;

-- ISAM : Indexed Sequential Access Mode
-- DDL : Data Description Language ( CREATE, DROP, ALTER, ...)
-- DML : Data Manipulation Language ( SELECT, INSERT, UPDATE ...)
-- TCL : Transaction Control Language 

-- INSERT INTO clients ( nom, prenom, solde ) VALUES 
--     ( 'Dupont', 'Pierre', 1000 ),
--     ( 'Durand', 'Jean', 1000 );


-- Virement de Pierre à Jean :

-- Débiter le compte de Pierre

INSERT INTO mouvements ( id_client, valeur_credit, valeur_debit, date_mvt ) VALUES ( 1, 0, 100, '2021-01-15');
UPDATE clients SET solde = 800 WHERE id=1;

-- Panne de courant !!!

-- Créditer le compte de Jean

INSERT INTO mouvements ( id_client, valeur_credit, valeur_debit, date_mvt ) VALUES ( 2, 100, 0, '2021-01-15');
UPDATE clients SET solde = 1000 WHERE id=2;

-- Transactions : 

-- Début de Transaction

--     MAJ table1 - innoDB - annulé
--     MAJ table2 - myISAM - ne peut pas annuler

--     Erreur
