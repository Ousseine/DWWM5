DROP DATABASE IF EXISTS guide;
CREATE DATABASE IF NOT EXISTS guide;
USE guide;

SET storage_engine = MyISAM;

CREATE TABLE restaurant(
   id               INT AUTO_INCREMENT,
   nom              VARCHAR(50),
   adresse          VARCHAR(50),
   PRIMARY KEY(id)
);

CREATE TABLE type_plat(
   id               INT AUTO_INCREMENT,
   lib_type_plat    VARCHAR(50),
   PRIMARY KEY(id)
);

CREATE TABLE origine(
   id               INT AUTO_INCREMENT,
   appellation      VARCHAR(50),
   vignoble         VARCHAR(50),
   PRIMARY KEY(id)
);

CREATE TABLE vin(
   id               INT AUTO_INCREMENT,
   nom              VARCHAR(50),
   millesime        VARCHAR(50),
   id_origine       INT,
   PRIMARY KEY(id),
   FOREIGN KEY(id_origine) 
    REFERENCES origine(id)
    ON DELETE CASCADE
);

CREATE TABLE plat(
   id               INT AUTO_INCREMENT,
   nom              VARCHAR(50),
   id_vin           INT,
   id_type_plat     INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_vin) REFERENCES vin(id),
   FOREIGN KEY(id_type_plat) REFERENCES type_plat(id)
);

CREATE TABLE proposer_plat(
   id_restaurant    INT,
   id_plat          INT,
   prix             DECIMAL(4,2),
   specialite       BOOLEAN,
   PRIMARY KEY(id_restaurant, id_plat),
   FOREIGN KEY(id_restaurant) REFERENCES restaurant(id),
   FOREIGN KEY(id_plat) REFERENCES plat(id)
);

CREATE TABLE proposer_vin(
   id_restaurant    INT,
   id_vin           INT,
   prix_bouteille   DECIMAL(5,2),
   prix_verre       DECIMAL(4,2),
   PRIMARY KEY(id_restaurant, id_vin),
   FOREIGN KEY(id_restaurant) REFERENCES restaurant(id),
   FOREIGN KEY(id_vin) REFERENCES vin(id)
);