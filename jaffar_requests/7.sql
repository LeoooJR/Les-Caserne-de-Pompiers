-- Quels sont les pompiers qui ne travaillent pas dans la ville ou` ils habitent ?

SELECT  pompier.nom, pompier.prenom
FROM pompier
INNER JOIN caserne USING (id_caserne)
WHERE pompier.nom_ville <> caserne.nom_ville;

-- jaffarhussein=# \i 7.sql
--     nom     | prenom  
-- ------------+---------
--  Marchand   | Louis
--  Valjean    | Jean
--  Antoinette | Marie
--  Montant    | Sylvain
--  Savairien  | Jean
--  Conchon    | Sylvain
--  Jumper     | Jolly
-- (7 rows)

