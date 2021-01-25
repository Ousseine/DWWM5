DROP DATABASE IF EXISTS site;
CREATE DATABASE IF NOT EXISTS site;
USE site;


CREATE TABLE Utilisateur(
   id                       INT AUTO_INCREMENT,
   identifiant              VARCHAR(50) NOT NULL,
   nom                      VARCHAR(50) NOT NULL,
   email                    VARCHAR(50) NOT NULL,
   mdp                      VARCHAR(50) NOT NULL,
   role                     ENUM( 'abonne','contributeur','admin' ) NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(identifiant),
   UNIQUE(email)
);

CREATE TABLE metadata(
   id                       INT AUTO_INCREMENT,
   nom                      VARCHAR(50) NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(nom)
);

CREATE TABLE role(
   id                       INT AUTO_INCREMENT,
   nom                      VARCHAR(50) NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(nom)
);

CREATE TABLE Catégorie(
   id_categorie             INT AUTO_INCREMENT,
   nom VARCHAR(50) NOT NULL,
   id_categorie_Parent INT,
   PRIMARY KEY(id_categorie),
   UNIQUE(nom),
   FOREIGN KEY(id_categorie_Parent) REFERENCES Catégorie(id_categorie)
);

CREATE TABLE Message(
   id_message               INT AUTO_INCREMENT,
   objet VARCHAR(50) NOT NULL,
   message TEXT NOT NULL,
   email VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_message)
);

CREATE TABLE Contenu(
   id_contenu               INT AUTO_INCREMENT,
   Titre VARCHAR(50) NOT NULL,
   Texte TEXT NOT NULL,
   Statut VARCHAR(50) NOT NULL,
   type_contenu VARCHAR(50) NOT NULL,
   id_utilisateur INT NOT NULL,
   PRIMARY KEY(id_contenu),
   FOREIGN KEY(id_utilisateur) REFERENCES Utilisateur(id_utilisateur)
);

CREATE TABLE Commentaire(
   id_commentaire           INT AUTO_INCREMENT,
   titre VARCHAR(50) NOT NULL,
   texte TEXT NOT NULL,
   statut VARCHAR(50) NOT NULL,
   pseudo VARCHAR(50),
   date_commentaire DATETIME NOT NULL,
   id_utilisateur INT,
   id_contenu INT NOT NULL,
   id_commentaire_Parent INT,
   PRIMARY KEY(id_commentaire),
   FOREIGN KEY(id_utilisateur) REFERENCES Utilisateur(id_utilisateur),
   FOREIGN KEY(id_contenu) REFERENCES Contenu(id_contenu),
   FOREIGN KEY(id_commentaire_Parent) REFERENCES Commentaire(id_commentaire)
);

CREATE TABLE Compléter(
   id_contenu               INT,
   id_metadata INT,
   valeur VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_contenu, id_metadata),
   UNIQUE(valeur),
   FOREIGN KEY(id_contenu) REFERENCES Contenu(id_contenu),
   FOREIGN KEY(id_metadata) REFERENCES metadata(id_metadata)
);

CREATE TABLE Posseder(
   id_utilisateur           INT,
   id_role INT,
   PRIMARY KEY(id_utilisateur, id_role),
   FOREIGN KEY(id_utilisateur) REFERENCES Utilisateur(id_utilisateur),
   FOREIGN KEY(id_role) REFERENCES Rôle(id_role)
);

CREATE TABLE Appartenir(
   id_contenu               INT AUTO_INCREMENT,
   id_categorie INT,
   PRIMARY KEY(id_contenu, id_categorie),
   FOREIGN KEY(id_contenu) REFERENCES Contenu(id_contenu),
   FOREIGN KEY(id_categorie) REFERENCES Catégorie(id_categorie)
);

CREATE TABLE Amis(
   id_utilisateur INT,
   id_utilisateur_1 INT,
   PRIMARY KEY(id_utilisateur, id_utilisateur_1),
   FOREIGN KEY(id_utilisateur) REFERENCES Utilisateur(id_utilisateur),
   FOREIGN KEY(id_utilisateur_1) REFERENCES Utilisateur(id_utilisateur)
);
