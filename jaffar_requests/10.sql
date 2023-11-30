-- Dans quelle(s) caserne(s) se trouve(nt) la (les) citerne(s) de plus grosse contenance ?
SELECT c.id_caserne AS caserne,SUM(citerne.contenance) AS total_volume
FROM caserne as c
INNER JOIN citerne USING(id_caserne)
GROUP BY c.id_caserne
ORDER BY total_volume DESC LIMIT 1;

-- jaffarhussein=# \i 10.sql
--  caserne | total_volume 
-- ---------+--------------
--        2 |         2950
-- (1 row)