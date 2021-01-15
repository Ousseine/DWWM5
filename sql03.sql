USE dwwm5;

-- Ajout colonne
-- ALTER TABLE table1 ADD COLUMN colonne2 INT;
-- ALTER TABLE table1 ADD COLUMN colonne3 INT;

-- Ajout colonne en première position
-- ALTER TABLE table1 ADD COLUMN id2 INT FIRST;

-- Ajout colonne après une colonne désignée
-- ALTER TABLE table1 ADD COLUMN id3 INT AFTER id;

-- Ajout de plsieurs colonnes
-- ALTER TABLE table1 
--     ADD COLUMN id4 INT NOT NULL AFTER id3,
--     ADD COLUMN id5 INT UNIQUE AFTER id4,
--     ADD COLUMN colonne0 VARCHAR(32) AFTER id5;

-- Modifier le type d'une colonne
-- ALTER TABLE table1 MODIFY colonne0 INT UNIQUE;

-- Modifier le type de plusieurs colonnes
-- ALTER TABLE table1 
--     MODIFY colonne2 VARCHAR(32),
--     MODIFY colonne3 VARCHAR(32);

-- Renommer une colonne : CHANGE !!!
-- ALTER TABLE table1 CHANGE colonne0 colonne INT;

-- Renommer plusieurs colonnes : CHANGE !!!
-- ALTER TABLE table1 
--     CHANGE colonne1 colonne01 INT,
--     CHANGE colonne2 colonne02 VARCHAR(64),
--     CHANGE colonne3 colonne03 INT;

-- Renommer une table : RENAME !!!
-- ALTER TABLE table1 RENAME TO table01;
-- RENAME TABLE table2 TO table02;