CREATE TABLE assure (

    num_assure VARCHAR(16) UNIQUE,
    num_securite_sociale VAR(11), 

    /* // Choix  */
    PRIMARY KEY(num_securite_sociale)  /* Clé primaire : PK / Primary Key */
    /* num_assure : Clé candidate / Candidate Key : CK */

)


PK : num_securite_sociale
CK : num_assure -> INDEX UNIQUE

acteur = (id_acteur [PK] INT, nom VARCHAR(50), prenom VARCHAR(50), adresse VARCHAR(255), date_naissance DATE);