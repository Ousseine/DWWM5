/* // FULLTEXT - MyISAM*/
USE atout_jouer;
/* ALTER TABLE piece ADD COLUMN resume VARCHAR(255); */
/* ALTER TABLE piece ADD FULLTEXT ft_resume ( resume );  */

UPDATE piece SET resume = 'mot1' WHERE id= 1;
UPDATE piece SET resume = 'mot2' WHERE id= 2;
UPDATE piece SET resume = 'mot1 mot2' WHERE id= 3;
UPDATE piece SET resume = 'mot1 mot3' WHERE id= 4;
UPDATE piece SET resume = 'mot2 mot1' WHERE id= 5;
UPDATE piece SET resume = 'mot2 mot1 mot3 mot4' WHERE id= 6;
UPDATE piece SET resume = 'mot3 mot1 mot4' WHERE id= 7;
UPDATE piece SET resume = 'mot4 mot2' WHERE id= 8;
UPDATE piece SET resume = 'mot1 mot4' WHERE id= 9;
UPDATE piece SET resume = 'mot1 mot3' WHERE id= 10;
UPDATE piece SET resume = 'mot2 mot3 mot1' WHERE id= 11;
UPDATE piece SET resume = 'mot2 mot3 mot4' WHERE id= 12;

/* IN NATURAL LANGUAGE */

/* SELECT id, resume FROM piece WHERE  */
/* MATCH(resume) AGAINST('mot1'); */
/* MATCH(resume) AGAINST('mot1, mot3'); */ /* et/ou */
/* MATCH(resume) AGAINST('mot1 mot3');  et/ou */

SELECT id, resume, ROUND(MATCH(resume) AGAINST('mot1 mot3 mot4'),6) AS Score FROM piece WHERE 
MATCH(resume) AGAINST('mot1 mot3 mot4')  /* et/ou */
ORDER BY Score  DESC
LIMIT 0, 5;


/*  */