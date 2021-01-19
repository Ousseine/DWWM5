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

SET autocommit=0;

INSERT INTO origine (appellation) VALUES ('Appellation1'), ('Appellation2'); 

COMMIT;

INSERT INTO vin ( nom, id_origine ) VALUES ('Vin1', 1 );
INSERT INTO vin ( nom, id_origine ) VALUES ('Vin2', 1 );

INSERT INTO vin ( nom, id_origine ) VALUES ('Vin3', 2 );
INSERT INTO vin ( nom, id_origine ) VALUES ('Vin10', 2 );
/* INSERT INTO vin ( nom, id_origine ) VALUES ('Vin11', 3 );  */

COMMIT;

