-- 1.Query 
-- Quel est le nombre de casernes ?
SELECT COUNT(id_caserne)
FROM caserne;

--  1.Result 
/*

count 
-------
     4
(1 row)

*/

-- 2.Query
-- Quels sont les pompiers (identifiants, noms, prenoms) des casernes situ ́ees `a Draguignan ?

SELECT pompier.id_pompier, pompier.nom, pompier.prenom
FROM pompier
    INNER JOIN caserne
    ON pompier.id_caserne = caserne.id_caserne
WHERE caserne.nom_ville = 'Draguignan';

-- 2.Result 
/*
 id_pompier |   nom   | prenom  
------------+---------+---------
          1 | Valjean | Jean
          2 | Conchon | Sylvain
(2 rows)
*/

-- 3.Query
-- Quelles sont les casernes protegeant a la fois Brignoles et Le Luc ?

    SELECT id_caserne
    FROM protege
    WHERE nom_ville = 'Brignoles'
INTERSECT
    SELECT id_caserne
    FROM protege
    WHERE nom_ville = 'Le Luc';

-- 3.Result 
/*
 id_caserne 
------------
          1
          4
(2 rows)
*/

-- 4.Query
-- Quels sont les pompiers (identifiants, noms, prenoms) de la caserne 3 habitant `a plus de 5 kms de la caserne ”la plus proche” pour leur adresse ?

SELECT p.id_pompier, p.nom, p.prenom
FROM pompier as p
    INNER JOIN adresse USING(nom_ville, num_rue, nom_rue, cp)
WHERE km > 5 AND p.id_caserne = 3;

-- 4.Result
--  id_pompier |   nom   | prenom 
-- ------------+---------+--------
--           1 | Montant | Yves
--           4 | Jumper  | Jolly
-- (2 rows)

-- 4bis

SELECT pompier.id_pompier, pompier.nom, pompier.prenom
FROM pompier
    INNER JOIN adresse
    ON pompier.num_rue = adresse.num_rue 
        AND pompier.nom_rue = adresse.nom_rue
        AND pompier.cp = adresse.cp
        AND pompier.nom_ville = adresse.nom_ville
WHERE pompier.id_caserne = 3 AND adresse.Km > 5;

/* 4bis.Result */
/*
 id_pompier |   nom   | prenom 
------------+---------+--------
          1 | Montant | Yves
          4 | Jumper  | Jolly
(2 rows)
*/

/* 5.Query */
-- Quel est le nombre de pompiers par caserne ?

SELECT id_caserne, COUNT(id_pompier) AS count_pompiers
FROM pompier
GROUP BY 1;

/* 5.Result */
/*
 id_caserne | count_pompiers 
------------+----------------
          3 |              4
          4 |              1
          2 |              2
          1 |              1
(4 rows)
*/

/* 6.Query */
-- Quelles sont les casernes ayant atteint leur capacit ́e maximale humaine ?

SELECT id_caserne, COUNT(id_pompier) AS count_pompiers
FROM pompier
GROUP BY 1
INTERSECT
SELECT id_caserne, capa_pompiers
FROM caserne;

/* 6.Result */

/*
 id_caserne | count_pompiers 
------------+----------------
          3 |              4
(1 row)
*/

/* 6bis */

-- Quelles sont les casernes ayant atteint leur capacit ́e maximale humaine ?
-- Count 
SELECT id_caserne, COUNT(id_pompier), c.capa_pompiers AS "CAPACITY"
FROM caserne as c
    INNER JOIN pompier USING (id_caserne) 
GROUP BY id_caserne,c.capa_pompiers
HAVING COUNT(id_pompier) = capa_pompiers;


--  id_caserne | count | CAPACITY 
-- ------------+-------+----------
--           3 |     4 |        4
-- (1 row)

/* 7.Query */
-- Quels sont les pompiers qui ne travaillent pas dans la ville ou` ils habitent ?

SELECT pompier.id_pompier, pompier.nom, pompier.prenom
FROM pompier
    INNER JOIN caserne
    ON pompier.id_caserne = caserne.id_caserne
WHERE pompier.nom_ville <> caserne.nom_ville;

/* 7.Result */
/*
 id_pompier |    nom     | prenom  
------------+------------+---------
          1 | Marchand   | Louis
          1 | Valjean    | Jean
          1 | Antoinette | Marie
          2 | Montant    | Sylvain
          3 | Savairien  | Jean
          2 | Conchon    | Sylvain
          4 | Jumper     | Jolly
(7 rows)
*/

/* 8.Query */
-- Listez par ordre d ́ecroissant les casernes en fonction du nombre de pompiers y travaillant.

SELECT id_caserne, COUNT(id_pompier) as count_pompiers
FROM pompier
GROUP BY 1
ORDER BY 2 DESC;

/* 8.Result */
/*
 id_caserne | count_pompiers 
------------+----------------
          3 |              4
          2 |              2
          4 |              1
          1 |              1
(4 rows)
*/

/* 9.Query */
-- Donnez pour chaque caserne le volume total d’eau de ses citernes.

SELECT id_caserne, SUM(contenance) as volume_total_citerne
FROM citerne
GROUP BY 1;

/* 9.Result */
/* 
 id_caserne | volume_total_citerne 
------------+----------------------
          3 |                 1200
          2 |                 2950
          1 |                 2300
(3 rows)
*/

-- 10.Query
-- Dans quelle(s) caserne(s) se trouve(nt) la (les) citerne(s) de plus grosse contenance ?

SELECT id_caserne
FROM citerne
WHERE Contenance = (SELECT MAX(contenance)
                    FROM citerne);

/* 10.Result */
/*
 id_caserne 
------------
          2
(1 row)
*/
