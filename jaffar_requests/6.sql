-- Quelles sont les casernes ayant atteint leur capacit ́e maximale humaine ?
-- Count 
SELECT id_caserne,COUNT(id_pompier),c.capa_pompiers AS "CAPACITY"
FROM caserne as c
INNER JOIN pompier USING (id_caserne)
GROUP BY id_caserne,c.capa_pompiers
HAVING COUNT(id_pompier) = capa_pompiers;


-- jaffarhussein=# \i 6.sql 
--  id_caserne | count | CAPACITY 
-- ------------+-------+----------
--           3 |     4 |        4
-- (1 row)