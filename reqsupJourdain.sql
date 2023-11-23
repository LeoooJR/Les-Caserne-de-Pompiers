/* 1. */
/* Quelles caserne protège le plus de ville ? */

SELECT id_caserne, COUNT(nom_ville) AS nbre_ville_protege
FROM protege
GROUP BY 1
ORDER BY 2 DESC;

/* 2. */
/* Le fabricant Peugeot équipe t-il préférentiellement plus une caserne que d’autres (la plus proche caserne ?) */

SELECT modele.nom_fabricant, camion.id_caserne AS caserne, COUNT(camion.id_camion) AS nbre_camion,
CASE
WHEN camion.id_caserne = (SELECT proche_caserne
                          FROM adresse, fabricant
                          WHERE adresse.nom_ville = fabricant.nom_ville
                          AND adresse.nom_rue = fabricant.nom_rue
                          AND adresse.cp = fabricant.cp
                          AND adresse.num_rue = fabricant.num_rue
                          AND nom_fabricant = 'Mercedes_benz') THEN '*'
ELSE NULL END AS caserne_proche
FROM modele
INNER JOIN camion
ON modele.nom_modele = camion.modele
WHERE modele.nom_fabricant = 'Mercedes_benz'
GROUP BY 1, 2
ORDER BY 3 DESC;


/* 3. */
/* Quelle est le modèle de camion le plus répandu de manière général au sein des casernes ? */

SELECT modele, COUNT(modele) as nbre_camion
FROM camion
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

/* 4. */
/* Combien de camions ont été fournis par le fabricant avec le plus haut délai de livraison moyen ? */

SELECT COUNT(id_camion) as nbre_camion
FROM camion
WHERE modele IN (SELECT nom_modele
                 FROM modele
                 WHERE nom_fabricant = (SELECT nom_fabricant
                                        FROM fabricant
                                        WHERE delai = (SELECT MAX(delai)
                                                       FROM fabricant)));

SELECT COUNT(id_camion) as nbre_camion
FROM camion
INNER JOIN modele
ON camion.modele = modele.nom_modele
WHERE modele.nom_fabricant = (SELECT nom_fabricant
                                FROM fabricant
                                WHERE delai = (SELECT MAX(delai)
                                                FROM fabricant));

/* 5. */
/* Quelle caserne manque de conducteur de camion ? (Un camion = un conducteur, on considère que tous les camions de la flotte doivent présenter un conducteur) */

WITH
vehicule AS (SELECT id_caserne, COUNT(id_camion) AS nbre_camion
FROM camion
GROUP BY 1),
conducteur AS (SELECT id_caserne, COUNT(id_pompier) AS nbre_pompier
FROM pompier
GROUP BY 1)
SELECT vehicule.id_caserne, vehicule.nbre_camion, conducteur.nbre_pompier
FROM vehicule
FULL OUTER JOIN conducteur
ON vehicule.id_caserne = conducteur.id_caserne
WHERE (vehicule.nbre_camion > conducteur.nbre_pompier) AND vehicule.nbre_camion IS NOT NULL;