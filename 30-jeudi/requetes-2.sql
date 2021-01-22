USE revisions;

-- Opérateurs de comparaison : = , < , <=, >, >=, <>, !=, <=>

-- SELECT * FROM employe WHERE nom_marital = 'Lavigne';
-- SELECT * FROM employe WHERE nom_marital <> 'Lavigne';

-- SELECT * FROM employe WHERE nom_marital = NULL; 
-- SELECT * FROM employe WHERE nom_marital <=> NULL;
-- SELECT * FROM employe WHERE nom_marital IS NULL;

-- AND (&&), OR (||), XOR (ou exclusif), NOT (!)

    -- expression1     AND     expression2 
    -- nom = "Dupont"  AND     salaire > 1500
    -- true/false      AND     true/false
    -- 0/1                     0/1

    -- AND : les 2 conditions doivent être respectées
    -- &&  0   1
    -- 0   0   0
    -- 1   0   1

    -- OR : Au moins une des 2 conditions doit être respectée
    -- ||  0   1
    -- 0   0   1
    -- 1   1   1

    -- XOR : 1 condition et une seule doit être respectée
    -- XOR 0   1
    -- 0   0   1
    -- 1   1   0

    -- false XOR false -> false
    -- false XOR true  -> true
    -- true  XOR false -> true
    -- true  XOR true  -> false

    -- nom <> 'Lavigne'
    -- nom != 'Lavigne'


    -- SELECT * FROM employe WHERE id_entreprise=1 AND annee_embauche=2010;
    -- SELECT * FROM employe WHERE id_entreprise=1 OR annee_embauche=2010;
    -- SELECT * FROM employe WHERE id_entreprise=1 XOR annee_embauche=2010;
    -- SELECT * FROM employe WHERE id_entreprise=1 AND NOT annee_embauche=2010;
    -- SELECT * FROM employe WHERE id_entreprise=1 AND annee_embauche!=2010;

    -- SELECT * FROM employe WHERE ( id_entreprise=1 OR id_entreprise=2 ) AND annee_embauche=2010;
    
    -- // Ordre ascendant (par défaut)

    -- SELECT * FROM employe ORDER BY nom;
    -- SELECT * FROM employe ORDER BY nom ASC;
    -- SELECT * FROM employe ORDER BY salaire;

    -- // Ordre descendant

    -- SELECT * FROM employe ORDER BY nom DESC;
    -- SELECT * FROM employe ORDER BY salaire DESC;


    -- SELECT * FROM employe ORDER BY annee_embauche DESC, salaire DESC;


    -- SELECT DISTINCT nom, salaire, annee_embauche FROM employe;

    -- SELECT * FROM employe ORDER BY id LIMIT 3;
    -- SELECT * FROM employe ORDER BY id LIMIT 3 OFFSET 3;
    
    -- SELECT * FROM employe ORDER BY salaire LIMIT 3;
    -- SELECT * FROM employe ORDER BY salaire LIMIT 3 OFFSET 3;
    
    -- SELECT * FROM employe ORDER BY id LIMIT 3;
    -- SELECT * FROM employe ORDER BY id LIMIT 3, 3;
    -- LIMIT X      : X représente le nombre de lignes
    -- LIMIT Y, X   : X représente le nombre de lignes et Y l'offset
    -- SELECT * FROM employe ORDER BY id LIMIT 1, 3;


    -- % n'importe quelle chaine de caractères (y compris chaîne vide)

    -- SELECT * FROM employe WHERE nom LIKE 'du%';  // commence par
    -- SELECT * FROM employe WHERE nom LIKE '%r%';  // contient
    -- SELECT * FROM employe WHERE nom LIKE '%d';   // se termine par 

    -- _ n'importe quel caractère (1 caractère)

    -- SELECT * FROM employe WHERE nom LIKE '___';
    -- SELECT * FROM employe WHERE nom LIKE 'du____';
    -- SELECT * FROM employe WHERE nom LIKE 'du__n_';
    -- SELECT * FROM employe WHERE nom LIKE '_u__%';

    -- Caractère d'échappement : \
    -- SELECT * FROM employe where nom_marital LIKE '%\_%';
    -- Recherche la valeur % dans la colonne
    -- SELECT * FROM employe where nom_marital LIKE '%\%%';

    -- INSERT INTO table1 (colonne5) VALUES ('Rue de l\'église');
    -- INSERT INTO table1 (colonne5) VALUES ('Rue de l\'église');
    -- INSERT INTO table1 (colonne5) VALUES ("Rue de l'église");

    /* SELECT * FROM employe WHERE salaire LIKE '1%'; */

    /* SELECT * FROM employe WHERE 
        salaire >= 1500 AND salaire <= 2000;  */

    /* SELECT * FROM employe WHERE salaire BETWEEN 1500 AND 2000; */
    /* SELECT * FROM employe WHERE nom BETWEEN 'c' AND 'e'; */

    /* SELECT * FROM employe WHERE id_entreprise=1 OR id_entreprise=2; 

    SELECT * FROM employe WHERE id_entreprise IN (1,2); */

    /* Requêtes imbriquées */

    /* Sous-requête : requête exécutée à l'intérieur d'une requête */

    /* Dans le FROM */

    /* SELECT * FROM (SELECT * FROM table1 ) AS requete; */

    /* SELECT MIN(salaire), MAX(salaire) FROM (SELECT * FROM employe WHERE id_entreprise=1) AS requete; */
    /* SELECT MIN(salaire), MAX(salaire) FROM employe WHERE id_entreprise=1; */

    /* SELECT t1.id AS id1, t1.nom AS nom1, t2.nom AS nom2 , t2.id AS id2 
    FROM 
        employe AS t1, 
        entreprise AS t2
    WHERE t2.id = t1.id_entreprise; */

    /* SELECT * FROM entreprise WHERE ca >= 100 ORDER BY nom; */

    /* INSERT INTO entreprise2 ( nom, ca ) (SELECT nom, ca FROM entreprise WHERE ca >= 100 ORDER BY nom); */

    /* WHERE */


    /* SELECT id FROM entreprise WHERE ca =50; */
    /* SELECT id FROM entreprise WHERE ca > 100; */

    /* SELECT * FROM employe WHERE id_entreprise = (SELECT id FROM entreprise WHERE ca =50); */
    /* SELECT * FROM employe WHERE id_entreprise IN ( SELECT id FROM entreprise WHERE ca > 100 ); */
    /* SELECT * FROM employe WHERE id_entreprise NOT IN ( SELECT id FROM entreprise WHERE ca > 100 ); */

    /* SELECT COUNT(*) FROM employe WHERE id_entreprise=?; */

    /* SELECT entreprise.id, nom, (SELECT COUNT(*) FROM employe WHERE id_entreprise=entreprise.id) FROM entreprise; */

    /* (entreprise) id=4

                    (employe) id_entreprise = 4


    1, Leclerc, 3
    2, Carrefour, 2
    3, Lidl, 2
    4, Auchan, 1 */

    /* SELECT entreprise.id, nom, (SELECT AVG(salaire) FROM employe WHERE id_entreprise=entreprise.id) FROM entreprise; */
