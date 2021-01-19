USE guide; 
/* INSERT INTO origine (appellation) VALUES ('Appellation1'), ('Appellation2');

INSERT INTO vin ( nom, id_origine ) VALUES ('Vin1', 1 );
INSERT INTO vin ( nom, id_origine ) VALUES ('Vin2', 1 );
INSERT INTO vin ( nom, id_origine ) VALUES ('Vin3', 2 );
INSERT INTO vin ( nom, id_origine ) VALUES ('Vin10', 2 );
INSERT INTO vin ( nom, id_origine ) VALUES ('Vin11', 3 ); */

/* autocommit : valeur par défaut = 1  => commit automatique */
/* si autocommit =  0  => commit manuel */

/* SET autocommit=0;
INSERT INTO vin ( nom, id_origine ) VALUES ('Vin1a', 1 );
INSERT INTO vin ( nom, id_origine ) VALUES ('Vin2a', 1 );
COMMIT;
SELECT * FROM vin; */

/* SET autocommit=0; */

/* INSERT INTO origine (appellation) VALUES ('Appellation1'), ('Appellation2');  */

/* COMMIT;

INSERT INTO vin ( nom, id_origine ) VALUES ('Vin1', 7 );
INSERT INTO vin ( nom, id_origine ) VALUES ('Vin2', 7 );

ROLLBACK;

INSERT INTO vin ( nom, id_origine ) VALUES ('Vin3', 8 );
INSERT INTO vin ( nom, id_origine ) VALUES ('Vin10', 8 );
/* INSERT INTO vin ( nom, id_origine ) VALUES ('Vin11', 3 );  */

/* COMMIT;  */

/* START TRANSACTION; /* ou BEGIN ou BEGIN WORK */ 
/* INSERT INTO vin ( nom, id_origine ) VALUES ('Vin20', 8 );
SAVEPOINT reprise1;
INSERT INTO vin ( nom, id_origine ) VALUES ('Vin21', 8 );
SAVEPOINT reprise2;
INSERT INTO vin ( nom, id_origine ) VALUES ('Vin22', 8 );
ROLLBACK TO reprise2; /* ROLLBACK WORK TO SAVEPOINT reprise2 */
/*COMMIT;  */


/* COMMIT;  */

/* START TRANSACTION; ou BEGIN ou BEGIN WORK  */
/* 
    INSERT INTO vin ( nom, id_origine ) VALUES ('Vin30', 8 );
    SAVEPOINT reprise1;
    INSERT INTO vin ( nom, id_origine ) VALUES ('Vin31a', 8 );
    INSERT INTO vin ( nom, id_origine ) VALUES ('Vin31b', 8 );
    INSERT INTO vin ( nom, id_origine ) VALUES ('Vin31c', 8 );
    
    SAVEPOINT reprise2;
    INSERT INTO vin ( nom, id_origine ) VALUES ('Vin32a', 8 ); 
    INSERT INTO vin ( nom, id_origine ) VALUES ('Vin32b', 8 ); 
    INSERT INTO vin ( nom, id_origine ) VALUES ('Vin32c', 8 ); 
    
    ROLLBACK TO reprise1; /* ROLLBACK WORK TO SAVEPOINT reprise1 */

/* COMMIT; */

/* Les commandes DDL (CREATE, ...) sont commitées automatiquement */

/* Ne sont pas prise en compte avec MyISAM */

ALTER TABLE vin ENGINE=InnoDB;

START TRANSACTION; /* ou BEGIN ou BEGIN WORK */ 

    INSERT INTO vin ( nom, id_origine ) VALUES ('Vin40', 8 );
    SAVEPOINT reprise1;
    INSERT INTO vin ( nom, id_origine ) VALUES ('Vin41a', 8 );
    INSERT INTO vin ( nom, id_origine ) VALUES ('Vin41b', 8 );
    INSERT INTO vin ( nom, id_origine ) VALUES ('Vin41c', 8 );
    
    SAVEPOINT reprise2;
    INSERT INTO vin ( nom, id_origine ) VALUES ('Vin42a', 8 ); 
    INSERT INTO vin ( nom, id_origine ) VALUES ('Vin42b', 8 ); 
    INSERT INTO vin ( nom, id_origine ) VALUES ('Vin42c', 8 ); 
    
    ROLLBACK TO reprise1; /* ROLLBACK WORK TO SAVEPOINT reprise1 */

COMMIT;