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

    INSERT INTO table1 (colonne5) VALUES ('Rue de l\'église');
    -- INSERT INTO table1 (colonne5) VALUES ('Rue de l\'église');
    -- INSERT INTO table1 (colonne5) VALUES ("Rue de l'église");

    


    


