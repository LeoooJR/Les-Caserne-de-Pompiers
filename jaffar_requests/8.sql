-- Listez par ordre d ́ecroissant les casernes en fonction du nombre de pompiers y travaillant.
SELECT DISTINCT(id_caserne),COUNT(id_pompier)
FROM caserne
INNER JOIN pompier USING (id_caserne)
GROUP BY id_caserne
ORDER BY 2 DESC;

--  id_caserne | count 
-- ------------+-------
--           3 |     4
--           2 |     2
--           1 |     1
--           4 |     1
-- (4 rows)