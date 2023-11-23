/* 1. */

SELECT COUNT(id_caserne) 
FROM caserne;

/* 2. */

SELECT pompier.id_pompier, pompier.nom, pompier.prenom
FROM pompier
INNER JOIN caserne
ON pompier.id_caserne = caserne.id_caserne
WHERE caserne.nom_ville = 'Draguignan';

/* 3. */

SELECT id_caserne
FROM protege
WHERE nom_ville = 'Brignoles'
INTERSECT
SELECT id_caserne
FROM protege
WHERE nom_ville = 'Le Luc';

/* 4. */

SELECT pompier.id_pompier, pompier.nom, pompier.prenom
FROM pompier
INNER JOIN adresse
ON pompier.num_rue = adresse.num_rue 
AND pompier.nom_rue = adresse.nom_rue
AND pompier.cp = adresse.cp
AND pompier.nom_ville = adresse.nom_ville
WHERE pompier.id_caserne = 3 AND adresse.Km > 5;

/* 5. */

SELECT id_caserne, COUNT(id_pompier) AS count_pompiers
FROM pompier
GROUP BY 1;

/* 6. */

SELECT id_caserne, COUNT(id_pompier) AS count_pompiers
FROM pompier
GROUP BY 1
INTERSECT
SELECT id_caserne, capa_pompiers
FROM caserne;

SELECT caserne.id_caserne, caserne.capa_pompiers, COUNT(pompier.id_pompier) AS count_pompiers
FROM pompier
INNER JOIN caserne
ON pompier.id_caserne = caserne.id_caserne
GROUP BY 1, 2
HAVING caserne.capa_pompiers = COUNT(pompier.id_pompier);

/* 7. */

SELECT pompier.id_pompier, pompier.nom, pompier.prenom
FROM pompier
INNER JOIN caserne
ON pompier.id_caserne = caserne.id_caserne
WHERE pompier.nom_ville != caserne.nom_ville;

/* 8. */

SELECT id_caserne, COUNT(id_pompier) as count_pompiers
FROM pompier
GROUP BY 1
ORDER BY 2 DESC;


/* 9. */

SELECT id_caserne, SUM(contenance) as volume_total_citerne
FROM citerne
GROUP BY 1;

/* 10. */

SELECT id_caserne
FROM citerne
WHERE Contenance = (SELECT MAX(contenance)
                    FROM citerne);



