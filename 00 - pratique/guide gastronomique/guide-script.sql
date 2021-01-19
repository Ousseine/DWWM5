CREATE TABLE restaurant(
   id_restaurant INT,
   nom VARCHAR(50),
   adresse VARCHAR(50),
   PRIMARY KEY(id_restaurant)
);

CREATE TABLE type_plat(
   id_type_plat INT,
   lib_type_plat VARCHAR(50),
   PRIMARY KEY(id_type_plat)
);

CREATE TABLE origine(
   id_origine INT,
   appellation VARCHAR(50),
   vignoble VARCHAR(50),
   PRIMARY KEY(id_origine)
);

CREATE TABLE vin(
   id_vin INT,
   nom VARCHAR(50),
   Millésime VARCHAR(50),
   id_origine INT NOT NULL,
   PRIMARY KEY(id_vin),
   FOREIGN KEY(id_origine) REFERENCES origine(id_origine)
);

CREATE TABLE plat(
   id_plat INT,
   nom VARCHAR(50),
   id_vin INT,
   id_type_plat INT NOT NULL,
   PRIMARY KEY(id_plat),
   FOREIGN KEY(id_vin) REFERENCES vin(id_vin),
   FOREIGN KEY(id_type_plat) REFERENCES type_plat(id_type_plat)
);

CREATE TABLE proposer_plat(
   id_restaurant INT,
   id_plat INT,
   prix DECIMAL(4,2),
   specialite LOGICAL,
   PRIMARY KEY(id_restaurant, id_plat),
   FOREIGN KEY(id_restaurant) REFERENCES restaurant(id_restaurant),
   FOREIGN KEY(id_plat) REFERENCES plat(id_plat)
);

CREATE TABLE proposer_vin(
   id_restaurant INT,
   id_vin INT,
   prix_bouteille DECIMAL(5,2),
   prix_verre DECIMAL(4,2),
   PRIMARY KEY(id_restaurant, id_vin),
   FOREIGN KEY(id_restaurant) REFERENCES restaurant(id_restaurant),
   FOREIGN KEY(id_vin) REFERENCES vin(id_vin)
