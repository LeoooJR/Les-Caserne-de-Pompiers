-- Quels sont les pompiers (identifiants, noms, prenoms) des casernes situ ́ees `a Draguignan ?
SELECT id_pompier, nom, prenom
FROM Pompier
WHERE nom_ville = 'Draguignan';