    /* // Liste des colonnes */
    /* SELECT employe.id AS Employé, annee_embauche, salaire AS Salaire, ca, entreprise.id AS Enreprise */
    /* Toutes les colonnes */
    SELECT entreprise.id, entreprise.nom AS Entreprise, employe.nom AS Employé, salaire  
    FROM employe, entreprise
        WHERE 
            /* Filtre */
            entreprise.id = 1 AND 
            salaire < 1500
            /* Condition de jointure */
            AND
            entreprise.id = employe.id_entreprise  
        ORDER BY salaire DESC
        /* LIMIT 0, 3 */
    ;

    SELECT entreprise.id, entreprise.nom AS Entreprise, employe.nom AS Employé, salaire  
    FROM employe 
        INNER JOIN entreprise ON entreprise.id = employe.id_entreprise  
        WHERE 
            /* Filtre */
            entreprise.id = 1 AND 
            salaire < 1500
        ORDER BY salaire DESC
        /* LIMIT 0, 3 */
    ;

    
/* Produit cartésien : toutes les combinaisons possibles */

/* -------------------------------------------------------------- */

SELECT * FROM table1, table2, table3, table4
WHERE
    /* Filtres */
    /* ... */
    /* AND */
    table1.id = table2.id_table1 AND 
    table2.id = table3.id_table2 AND 
    table3.id = table4.id_table3 
;


SELECT * FROM table1
    INNER JOIN table2 ON table1.id = table2.id_table1
    LEFT  JOIN table3 ON table2.id = table3.id_table2
    RIGHT JOIN table4 ON table3.id = table4.id_table3 
WHERE
    /* Filtres */
    /* ... */
;

/* -------------------------------------------------------------- */

