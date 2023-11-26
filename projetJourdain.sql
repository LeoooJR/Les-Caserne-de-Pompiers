/* 1.Query */

SELECT COUNT(id_caserne) 
FROM caserne;

/* 1.Result */
/*

count 
-------
     4
(1 row)

*/


/* 2.Query */

SELECT pompier.id_pompier, pompier.nom, pompier.prenom
FROM pompier
INNER JOIN caserne
ON pompier.id_caserne = caserne.id_caserne
WHERE caserne.nom_ville = 'Draguignan';

/* 2.Result */
/*

 id_pompier |   nom   | prenom  
------------+---------+---------
          1 | Valjean | Jean
          2 | Conchon | Sylvain
(2 rows)

*/

/* 3.Query */

SELECT id_caserne
FROM protege
WHERE nom_ville = 'Brignoles'
INTERSECT
SELECT id_caserne
FROM protege
WHERE nom_ville = 'Le Luc';

/* 3.Result */
/*
 id_caserne 
------------
          1
          4
(2 rows)
*/

/* 4.Query */

SELECT pompier.id_pompier, pompier.nom, pompier.prenom
FROM pompier
INNER JOIN adresse
ON pompier.num_rue = adresse.num_rue 
AND pompier.nom_rue = adresse.nom_rue
AND pompier.cp = adresse.cp
AND pompier.nom_ville = adresse.nom_ville
WHERE pompier.id_caserne = 3 AND adresse.Km > 5;

/* 4.Result */
/*
 id_pompier |   nom   | prenom 
------------+---------+--------
          1 | Montant | Yves
          4 | Jumper  | Jolly
(2 rows)
*/

/* 5.Query */

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

SELECT caserne.id_caserne, caserne.capa_pompiers, COUNT(pompier.id_pompier) AS count_pompiers
FROM pompier
INNER JOIN caserne
ON pompier.id_caserne = caserne.id_caserne
GROUP BY 1, 2
HAVING caserne.capa_pompiers = COUNT(pompier.id_pompier);

/* 7.Query */

SELECT pompier.id_pompier, pompier.nom, pompier.prenom
FROM pompier
INNER JOIN caserne
ON pompier.id_caserne = caserne.id_caserne
WHERE pompier.nom_ville != caserne.nom_ville;

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

/* 10.Query */

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




