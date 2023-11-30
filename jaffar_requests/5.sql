-- Quel est le nombre de pompiers par caserne ?

SELECT id_caserne, COUNT(id_pompier) AS nb_pompier
FROM pompier
GROUP BY id_caserne;

-- jaffarhussein=# \i 5.sql
--  id_caserne | nb_pompier 
-- ------------+------------
--           3 |          4
--           4 |          1
--           2 |          2
--           1 |          1
-- (4 rows)