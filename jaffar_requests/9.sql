-- Donnez pour chaque caserne le volume total d’eau de ses citernes.
SELECT c.id_caserne AS caserne,SUM(citerne.contenance) AS total_volume
FROM caserne as c
INNER JOIN citerne USING(id_caserne)
GROUP BY c.id_caserne;

-- jaffarhussein=# \i 9.sql
--  caserne | total_volume 
-- ---------+--------------
--        2 |         2950
--        3 |         1200
--        1 |         2300
-- (3 rows)