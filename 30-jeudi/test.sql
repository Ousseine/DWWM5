-- SELECT { liste des colonnes | * } FROM table WHERE condition;

CREATE TABLE table1 (
    id          INT AUTO_INCREMENT,
    ...,
    id2         INT UNIQUE NOT NULL,
    ...,
    PRIMARY KEY(id)
);

CREATE TABLE table2 (
    id          INT AUTO_INCREMENT,
    ...,
    id_table1   INT,
    ...,
    PRIMARY KEY(id),
    FOREIGN KEY(id_table1) REFERENCES table1(id)
);

CREATE TABLE table3 (
    id          INT AUTO_INCREMENT,
    ...,
    id_table1   INT,
    ...,
    PRIMARY KEY(id),
    CONSTRAINT fk_table3_table1
        FOREIGN KEY(id_table1) REFERENCES table1(id)
        ON DELETE
        ON UPDATE
);

