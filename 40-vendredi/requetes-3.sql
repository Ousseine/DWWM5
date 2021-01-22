/* Clés étrangères */

CREATE TABLE table1 (
    id      INT AUTO_INCREMENT,
    ...
    PRIMARY KEY(id)
);

CREATE TABLE table1b (
    id      INT AUTO_INCREMENT,
    ...
    PRIMARY KEY(id)
);

CREATE TABLE table2 (
    id          INT AUTO_INCREMENT,
    ...
    id_table1   INT,
    id_table1b   INT,
    PRIMARY KEY(id),
    /* Syntaxe 1 */
    FOREIGN KEY(id_table1) REFERENCES table1(id),
    /* Syntaxe 2 */
    CONSTRAINT fk_table2_table1b
        FOREIGN KEY(id_table1b) REFERENCES table1b(id)
);