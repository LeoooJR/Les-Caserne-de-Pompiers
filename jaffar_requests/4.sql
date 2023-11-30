-- Quels sont les pompiers (identifiants, noms, prenoms) de la caserne 3 habitant `a plus de 5 kms de la caserne ”la plus proche” pour leur adresse ?

SELECT p.id_pompier, p.nom, p.prenom
FROM pompier as p
    INNER JOIN adresse USING(nom_ville, num_rue, nom_rue, cp)
WHERE km > 5
AND p.id_caserne = 3;

-- jaffarhussein=# \i 4.sql 
--  id_pompier |   nom   | prenom 
-- ------------+---------+--------
--           1 | Montant | Yves
--           4 | Jumper  | Jolly
-- (2 rows)