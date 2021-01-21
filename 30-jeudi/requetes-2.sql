USE revisions;

-- Opérateurs de comparaison : = , < , <=, >, >=, <>, !=, <=>

SELECT * FROM employe WHERE nom_marital = 'Lavigne';
SELECT * FROM employe WHERE nom_marital <> 'Lavigne';
-- SELECT * FROM employe WHERE nom_marital <=> NULL;
SELECT * FROM employe WHERE nom_marital = NULL;

