USE dwwm5;

CREATE TABLE IF NOT EXISTS tableg (id INT PRIMARY KEY AUTO_INCREMENT, colonne VARCHAR(32) );

-- INSERT INTO tableg (colonne) VALUES ('une phrase contenant bonjour');
-- INSERT INTO tableg (colonne) VALUES ('bonjour à tous');
-- INSERT INTO tableg (colonne) VALUES ('il a dit bonjour à tout le monde');
-- INSERT INTO tableg (colonne) VALUES ('une autre phrase');

-- // MyISAM & InnoDB

SELECT * FROM tableg WHERE colonne LIKE '%bonjour%';
SELECT * FROM tableg WHERE colonne LIKE 'bonjour%';
SELECT * FROM tableg WHERE colonne LIKE '%bonjour';
