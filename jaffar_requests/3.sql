-- Quelles sont les casernes protegeant a la fois Brignoles et Le Luc ?
SELECT DISTINCT(id_caserne)
FROM caserne as c
INNER JOIN protege as p
USING (id_caserne)
WHERE p.nom_ville = 'Brignoles' OR p.nom_ville = 'Le Luc';

-- jaffarhussein=# \i 3.sql
--  id_caserne 
-- ------------
--           1
--           4
-- (2 rows)