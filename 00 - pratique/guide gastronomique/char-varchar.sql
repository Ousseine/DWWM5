/* SELECT TABLE_NAME, (DATA_LENGTH + INDEX_LENGTH - DATA_FREE) AS Total
FROM information_schema.TABLES
WHERE TABLE_SCHEMA='guide'; */

USE guide;

CREATE TABLE IF NOT EXISTS table1 (
    ID          INT PRIMARY KEY AUTO_INCREMENT,
    colonne1    CHAR(128),
    bidon       VARCHAR(3)
) ENGINE=MyISAM; 

CREATE TABLE IF NOT EXISTS table2 (
    ID          INT PRIMARY KEY AUTO_INCREMENT,
    colonne1    VARCHAR(128),
    colonne2    VARCHAR(16) 
) ENGINE=MyISAM; 

/* CREATE TABLE IF NOT EXISTS table3 (
    ID          INT PRIMARY KEY AUTO_INCREMENT,
    colonne1    VARCHAR(128) 
) ENGINE=InnoDB;  */

 
INSERT INTO table1 (colonne1) VALUES
('azertyuiop'),('azertyuiop'),('azertyuiop'),('azertyuiop'),('azertyuiop'),
('azertyuiop'),('azertyuiop'),('azertyuiop'),('azertyuiop');


INSERT INTO table2 (colonne1) VALUES
('azertyuiop'),('azertyuiop'),('azertyuiop'),('azertyuiop'),('azertyuiop'),
('azertyuiop'),('azertyuiop'),('azertyuiop'),('azertyuiop'); 
 
/*
INSERT INTO table3 (colonne1) VALUES
('azertyuiop'),('azertyuiop'),('azertyuiop'),('azertyuiop'),('azertyuiop'),
('azertyuiop'),('azertyuiop'),('azertyuiop'),('azertyuiop');
*/