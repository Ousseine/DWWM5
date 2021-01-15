-- Moteur de recherche :
-- Ensemble d'algorithmes utilisés par un SGBDR pour stocker les informations et y accéder au moyen de requêtes SQL

-- MySQL  : MariaDB (fork)


CREATE DATABASE IF NOT EXISTS dwwm5;

USE dwwm5;

CREATE TABLE IF NOT EXISTS table1 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    colonne1 VARCHAR(64)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS table2 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    colonne1 VARCHAR(64)
) ENGINE=MyISAM;

-- moteurs de stockage disponibles
SHOW ENGINES;

-- Bases de données
-- SHOW DATABASES;

-- Tables
-- USE information_schema;
-- SHOW TABLES;

-- Colonnes
-- EXPLAIN table1;
