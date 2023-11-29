
--1) quels est le nombre de casernes?

  select COUNT (Id_caserne) as "le nombre de casernes" 
  from caserne;

  /* résulat
    le nombre de casernes 
-----------------------
                     4
(1 ligne)

 */
--2) quels sont les pompiers des casernes situés à Graguiguan?

  select Id_pompier, Nom, Prenom
  from Pompier, caserne
  where caserne.Id_caserne = Pompier.Id_caserne
    and caserne.Nom_ville = 'Draguignan';

/* 
    id_pompier |   nom   | prenom  
------------+---------+---------
          1    | Valjean | Jean
          2    | Conchon | Sylvain
(2 lignes)

*/

  --3) Quelles les casernes protégeant à la fois Brignoles et Le Luc?
  select caserne.Id_caserne as "les casernes protégeant à la fois Brignoles et Le Luc"
  from caserne, Protege
  where caserne.Id_caserne = Protege.Id_caserne
    and Protege.Nom_ville = 'Brignoles'
  intersect 
  select caserne.Id_caserne as "les casernes protégeant à la fois Brignoles et Le Luc"
  from caserne, Protege
  where caserne.Id_caserne = Protege.Id_caserne
    and Protege.Nom_ville = 'Le Luc';

  /* 
  les casernes protégeant à la fois Brignoles et Le Luc 
-------------------------------------------------------
                                                     1
                                                     4
(2 lignes)
*/

  --4) quels sont les pompiers de la caserne 3 habitant à plus de 5 kms de la caserne "la plus proche" pour leur adresse
  select Id_pompier, Nom, Prenom
  from Pompier, Adresse
  where pompier.nom_rue = Adresse.nom_rue
    and pompier.Num_rue = Adresse.Num_rue
    and pompier.Nom_ville = Adresse.NOM_ville
    and pompier.cp = Adresse.cp
    and pompier.Id_caserne = 3
    and Adresse.Km > 5;

    /*
    id_pompier |   nom   | prenom 
------------+---------+--------
          1 | Montant | Yves
          4 | Jumper  | Jolly
(2 lignes)
*/


  --5) quel est le nombre de pompiers par caserne?

  select caserne.Id_caserne, COUNT(Pompier.Id_pompier) as "nbre de pompier"
  from Pompier , caserne 
  where Pompier.Id_caserne = caserne.Id_caserne
  group by caserne.Id_caserne;

  /*
  id_caserne | nbre de pompier 
------------+-----------------
          4 |               1
          2 |               2
          1 |               1
          3 |               4
(4 lignes)
*/


  --6) quelles sont les casernes ayant atteint leur capacité maximale humaine?

  --select   pompier.Id_caserne, COUNT(Id_pompier)
  --from pompier, caserne
  --where caserne.Id_caserne = pompier.Id_caserne
  --group by pompier.Id_caserne;
  
  -- 7) quelles sont les pompier qui ne travail dans la ville où ils habitent ?

  select Id_pompier, Nom, Prenom
  from pompier, caserne
  where pompier.Id_caserne = caserne.Id_caserne
    and pompier.Nom_ville != caserne.Nom_ville;

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
(7 lignes)
*/


  -- 8) lister par ordre décroissant les casernes en fonction du nombre de pompiers qui y travaillent?
  
  select caserne.Id_caserne, COUNT(pompier.Id_pompier)
  from pompier, caserne
  where pompier.Id_caserne = caserne.Id_caserne
  group by caserne.Id_caserne
  order by (COUNT(pompier.Id_pompier)) DESC;

  /*
  id_caserne | count 
------------+-------
          3 |     4
          2 |     2
          4 |     1
          1 |     1
(4 lignes)
*/

--9)  Donnez pour chaque caserne le volume total d'eau de ses citernes

select caserne.Id_caserne, SUM(Contenance) as "le volume total"
from caserne, Citerne
where caserne.Id_caserne = Citerne.Id_caserne
group by caserne.Id_caserne; 

/*
id_caserne | le volume total 
------------+-----------------
          2 |            2950
          3 |            1200
          1 |            2300
(3 lignes)
*/
--10) Dans caserne ce trouve les citernes de plus gros conteance?
select caserne.Id_caserne, MAX(Contenance)
from caserne, Citerne
where caserne.Id_caserne = Citerne.Id_caserne
group by caserne.Id_caserne;

/*
id_caserne | le volume total 
------------+-----------------
          2 |            2950
          3 |            1200
          1 |            2300
(3 lignes)
*/





  
