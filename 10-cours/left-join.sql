USE atout_jouer;

CREATE TABLE IF NOT EXISTS table1 (
    id          INT PRIMARY KEY,
    colonne1    VARCHAR(32)
);

CREATE TABLE IF NOT EXISTS table2 (
    id          INT PRIMARY KEY,
    colonne2    VARCHAR(32),
    id_table1   INT
);

SELECT table1.id, colonne1, table2.id AS id2, colonne2, id_table1 FROM table1
INNER JOIN table2 ON table1.id = table2.id_table1;