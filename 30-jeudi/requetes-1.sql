USE revisions;

-- FONCTIONS D'AGREGAT

-- Nombre de lignes : COUNT()

-- INSERT INTO employe (nom, salaire, id_entreprise, nom_marital, annee_embauche) VALUES 

--     ( 'BOB1', 1999, 1, 'MARITAL1',2000),
--     ( 'BOB2', 1999, 1, '',2000),
--     ( 'BOB3', 1999, 1, NULL,2000),
--     ( 'BOB4', 1999, 1, DEFAULT, 2000);

-- SELECT COUNT(*) FROM employe;
-- SELECT COUNT(nom) FROM employe;
-- SELECT COUNT(nom_marital) FROM employe;

-- COUNT(colonne) : ne compte que les valeurs <> NULL

-- SELECT COUNT( DISTINCT nom) FROM employe;

-- SELECT COUNT(*) FROM employe WHERE id_entreprise = 1;


-- Minimum et maximum : MIN(), MAX()

-- SELECT MIN(salaire) FROM employe WHERE id_entreprise=1;
-- SELECT MAX(salaire) FROM employe  WHERE id_entreprise=1;


-- Somme : SUM()

-- SELECT SUM(salaire) FROM employe WHERE id_entreprise=1;

-- Moyenne : AVG() (average)

-- SELECT AVG(salaire) FROM employe WHERE id_entreprise=1;

-- SELECT SUM(salaire), AVG(salaire), MIN(salaire), MAX(salaire) FROM employe;


-- Concaténation : GROUP_CONCAT()

-- SELECT SUM(salaire), GROUP_CONCAT(nom) FROM employe WHERE id_entreprise=1;
-- SELECT SUM(salaire), GROUP_CONCAT(nom SEPARATOR ' -- ') FROM employe WHERE id_entreprise=1;


-- SELECT id_entreprise, AVG(salaire) FROM employe WHERE id_entreprise != 2 GROUP BY id_entreprise;

-- Liste des unbiquement : uniquement des fonctions d'agrégation ou des colonnes figurant dans le GROUP BY

-- SELECT id_entreprise, GROUP_CONCAT(nom), AVG(salaire) FROM employe GROUP BY id_entreprise;


SELECT id_entreprise, GROUP_CONCAT(annee_embauche), AVG(salaire) FROM employe GROUP BY id_entreprise, annee_embauche;
SELECT GROUP_CONCAT(annee_embauche),id_entreprise,  AVG(salaire) FROM employe GROUP BY annee_embauche, id_entreprise;


-- SELECT id_entreprise, GROUP_CONCAT(nom), AVG(salaire) FROM employe 
--     GROUP BY id_entreprise
--     HAVING AVG(salaire) <= 2000;

