/* 1.Query */
/* Quelles caserne protège le plus de ville ? */

SELECT id_caserne, COUNT(nom_ville) AS nbre_ville_protege
FROM protege
GROUP BY 1
ORDER BY 2 DESC;

/* 1.Result */
/*
id_caserne | nbre_ville_protege 
------------+--------------------
         10 |                  3
          5 |                  3
          3 |                  2
          9 |                  2
          7 |                  1
          1 |                  1
          8 |                  1
          4 |                  1
          6 |                  1
          2 |                  1
(10 rows)
*/

/* 2.Query */

-- Select the nom and prenom of the pompiers who have vowels as both their first and last character

SELECT DISTINCT prenom,nom 
FROM pompier 
WHERE prenom SIMILAR TO '(A|E|I|O|U)%(a|e|i|o|u)';

--  prenom |   nom    
-- --------+----------
--  Annie  | Gaie
--  Emma   | Augustin
-- (2 rows)

/* 3.Query */
/* Quelle est le modèle de camion le plus répandu de manière général au sein des casernes ? */

SELECT modele, COUNT(modele) as nbre_camion
FROM camion
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

/* 3.Result */
/*
  modele   | nbre_camion 
-----------+-------------
 Curiosity |           3
(1 row)
*/

/* 4.Query */
/* Combien de camions ont été fournis par le fabricant avec le plus haut délai de livraison moyen ? */

SELECT mod.nom_fabricant AS fabricant, COUNT(id_camion) AS nbre_camion
FROM camion AS cam
  INNER JOIN modele AS mod
  ON cam.modele = mod.nom_modele
  INNER JOIN fabricant AS fab
  USING(nom_fabricant)
WHERE delai = (SELECT MAX(delai)
               FROM fabricant)
GROUP BY 1;    

/* 4.Result */
/*
 fabricant | nbre_camion 
-----------+-------------
 Haas      |           2
(1 row)
*/

/* 5.Query */
/* Quelle caserne manque de conducteur de camion ? (i.e Les casernes dont le nombre de camions est supérieure au nombre de pompiers  */

WITH
  vehicule AS (SELECT id_caserne, COUNT(id_camion) AS nbre_camion
               FROM camion
               GROUP BY 1),
  conducteur AS (SELECT id_caserne, COUNT(id_pompier) AS nbre_pompier
                 FROM pompier
                 GROUP BY 1)
SELECT vehicule.id_caserne, vehicule.nbre_camion, conducteur.nbre_pompier
FROM vehicule
  INNER JOIN conducteur
    ON vehicule.id_caserne = conducteur.id_caserne
WHERE (vehicule.nbre_camion > conducteur.nbre_pompier);


/* 5.Result */
/*
 id_caserne | nbre_camion | nbre_pompier 
------------+-------------+--------------
          5 |           3 |            1
          2 |           2 |            1
          1 |           2 |            1
(3 rows)
*/