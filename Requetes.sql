--1) quels est le nombre de casernes?
--select COUNT (Id_caserne) from caserne;

--2) quels sont les pompiers des casernes situés à Graguiguan?
--select Id_pompier, Nom, Prenom
--from Pompier, caserne
--where caserne.Id_caserne = Pompier.Id_caserne
  --  and caserne.Nom_ville = 'Draguignan';

  --3) Quelles les casernes protégeant à la fois Brignoles et Le Luc?
  --select caserne.Id_caserne as "les casernes protégeant à la fois Brignoles et Le Luc"
  --from caserne, Protege
  --where caserne.Id_caserne = Protege.Id_caserne
  --  and Protege.Nom_ville = 'Brignoles'
  --intersect 
  --select caserne.Id_caserne as "les casernes protégeant à la fois Brignoles et Le Luc"
  --from caserne, Protege
  --where caserne.Id_caserne = Protege.Id_caserne
  --  and Protege.Nom_ville = 'Le Luc';

  --4) quels sont les pompiers de la caserne 3 habitant à plus de 5 kms de la caserne "la plus proche" pour leur adresse
  --select Id_pompier, Nom, Prenom
  --from Pompier, caserne, Adresse
  --where caserne.Id_caserne = Pompier.Id_caserne
  --  and caserne.Id_caserne = 3
  --  and Adresse.Km > 5;

  --5) quel est le nombre de pompiers par caserne?

  --select distinct COUNT(Pompier.Id_pompier)
  --from Pompier , caserne 
  --where Pompier.Id_caserne = caserne.Id_caserne
  --group by caserne;
  -- 6) quelles sont casernes ayant atteint leur capacité maximale humaine*
  select Id_caserne
  from caserne
  where Capa_pompiers = 60;
  