BEGIN TRANSACTION;

--Table Caserne
INSERT INTO Caserne(Id_caserne,Capa_camions,Capa_pompiers)
VALUES(1,8,45);
INSERT INTO Caserne(Id_caserne,Capa_camions,Capa_pompiers)
VALUES(2,10,60);
INSERT INTO Caserne(Id_caserne,Capa_camions,Capa_pompiers)
VALUES(3,10,4);
INSERT INTO Caserne(Id_caserne,Capa_camions,Capa_pompiers)
VALUES(4,3,17);
INSERT INTO Caserne(Id_caserne,Capa_camions,Capa_pompiers)
VALUES(5,3,33);
INSERT INTO Caserne(Id_caserne,Capa_camions,Capa_pompiers)
VALUES(6,10,60);
INSERT INTO Caserne(Id_caserne,Capa_camions,Capa_pompiers)
VALUES(7,25,110);
INSERT INTO Caserne(Id_caserne,Capa_camions,Capa_pompiers)
VALUES(8,5,50);
INSERT INTO Caserne(Id_caserne,Capa_camions,Capa_pompiers)
VALUES(9,20,120);
INSERT INTO Caserne(Id_caserne,Capa_camions,Capa_pompiers)
VALUES(10,10,77);

--Table Ville
INSERT INTO Ville(Nom_ville,Nb_hab,CP) VALUES('Melun',41609,77000);
INSERT INTO Ville(Nom_ville,Nb_hab,CP) VALUES('Meaux',55709,77100);
INSERT INTO Ville(Nom_ville,Nb_hab,CP) VALUES('Chelles',54372,77108);
INSERT INTO Ville(Nom_ville,Nb_hab,CP) VALUES('Pontault-Combault',37579,77373);
INSERT INTO Ville(Nom_ville,Nb_hab,CP) VALUES('Villeparisis',26700,77514);
INSERT INTO Ville(Nom_ville,Nb_hab,CP) VALUES('Lagny-sur-Marne',21139,77243);
INSERT INTO Ville(Nom_ville,Nb_hab,CP) VALUES('Mitry-Mory',20620,77294);
INSERT INTO Ville(Nom_ville,Nb_hab,CP) VALUES('Fontainebleau',15903,77186);
INSERT INTO Ville(Nom_ville,Nb_hab,CP) VALUES('Claye-Souilly',12316,77118);
INSERT INTO Ville(Nom_ville,Nb_hab,CP) VALUES('Provins',12115,77379);
INSERT INTO Ville(Nom_ville,Nb_hab,CP) VALUES('Nanteuil-lès-Meaux',6549,77330);

--Table Adresse
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(85,'Victor Hugo',77186,'Fontainebleau','Pavillon',7,3);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(34,'Marie Curie',77000,'Melun','Pavillon',5,2);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(78,'Voltaire',77514,'Villeparisis','Pavillon',9,8);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(8,'Simone de Beauvoir',77379,'Provins','HLM',8,12);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(6,'Louis Pasteur',77108,'Chelles','HLM',2,2);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(22,'Molière',77243,'Lagny-sur-Marne','Pavillon',1,7);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(50,'René Descartes',77294,'Mitry-Mory','HLM',9,5);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(71,'Coco Chanel',77186,'Fontainebleau','Pavillon',7,2);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(67,'Charles Baudelaire',77100,'Meaux','HLM',10,1);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(13,'Albert Camus',77000,'Melun','HLM',5,4);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(40,'Claude Monet',77330,'Nanteuil-lès-Meaux','Pavillon',10,15);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(55,'Marie Antoinette',77379,'Provins','Chateau',8,6);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(32,'Gustave Eiffel',77373,'Pontault-Combault','HLM',3,20);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(9,'Louis Braille',77118,'Claye-Souilly','HLM',3,10);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(76,'Blaise Pascal',77000,'Melun','HLM',3,4);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(9,'Louis Armstrong',77108,'Chelles','Pavillon',6,2);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(9,'Saint-Exupery',77243,'Lagny-sur-Marne','HLM',1,7);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(9,'Marie Antoinette',77108,'Chelles','HLM',6,4);
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation,Proche_caserne,Km)
VALUES(9,'Serge Gainsbourg',77000,'Melun','HLM',4,1);

INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation)
VALUES(33,'Brasier',77100,'Meaux','Caserne');
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation)
VALUES(10,'Fournaise',77186,'Fontainebleau','Caserne');
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation)
VALUES(65,'Incendie',77000,'Melun','Caserne');
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation)
VALUES(1,'Chaleur',77108,'Chelles','Caserne');
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation)
VALUES(8,'Flamme',77108,'Chelles','Caserne');
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation)
VALUES(75,'Combustion',77243,'Lagny-sur-Marne','Caserne');
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation)
VALUES(78,'Brulure',77100,'Meaux','Caserne');
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation)
VALUES(36,'Danger',77000,'Melun','Caserne');
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation)
VALUES(30,'Catastrophe',77294,'Mitry-Mory','Caserne');
INSERT INTO Adresse(Num_rue,Nom_rue,CP,Nom_ville,Type_habitation)
VALUES(36,'Au feu',77379,'Provins','Caserne');

UPDATE Caserne SET Num_rue=75,Nom_rue='Combustion',Nom_ville='Lagny-sur-Marne', CP=77243 WHERE Id_caserne=1;

UPDATE Caserne SET Num_rue=1,Nom_rue='Chaleur',Nom_ville='Chelles',CP=77108 WHERE Id_caserne=2;

UPDATE Caserne SET Num_rue=78,Nom_rue='Brulure',Nom_ville='Meaux',CP=77100 WHERE Id_caserne=3;

UPDATE Caserne SET Num_rue=36,Nom_rue='Danger',Nom_ville='Melun',CP=77000 WHERE Id_caserne=4;

UPDATE Caserne SET Num_rue=65,Nom_rue='Incendie',Nom_ville='Melun',CP=77000 WHERE Id_caserne=5;

UPDATE Caserne SET Num_rue=8,Nom_rue='Flamme',Nom_ville='Chelles',CP=77108 WHERE Id_caserne=6;

UPDATE Caserne SET Num_rue=10,Nom_rue='Fournaise',Nom_ville='Fontainebleau',CP=77186 WHERE Id_caserne=7;

UPDATE Caserne SET Num_rue=36,Nom_rue='Au feu',Nom_ville='Provins',CP=77379 WHERE Id_caserne=8;

UPDATE Caserne SET Num_rue=30,Nom_rue='Catastrophe',Nom_ville='Mitry-Mory',CP=77294 WHERE Id_caserne=9;

UPDATE Caserne SET Num_rue=33,Nom_rue='Brasier',Nom_ville='Meaux',CP=77100 WHERE Id_caserne=10;



--Table Protege
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(10,'Meaux',77100);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(10,'Nanteuil-lès-Meaux',77330);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(10,'Pontault-Combault',77373);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(3,'Meaux',77100);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(3,'Claye-Souilly',77118);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(5,'Nanteuil-lès-Meaux',77330);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(2,'Chelles',77108);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(6,'Chelles',77108);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(9,'Mitry-Mory',77294);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(9,'Villeparisis',77514);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(4,'Melun',77000);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(5,'Melun',77000);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(5,'Fontainebleau',77186);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(1,'Lagny-sur-Marne',77243);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(7,'Fontainebleau',77186);
INSERT INTO Protege(Id_caserne,Nom_ville,CP) VALUES(8,'Provins',77379);

--Table Fabricant
INSERT INTO Fabricant(Nom_fabricant,Delai,Num_rue,Nom_rue,CP,Nom_ville) 
VALUES('Peugeot',345,9,'Louis Braille',77118,'Claye-Souilly');
INSERT INTO Fabricant(Nom_fabricant,Delai,Num_rue,Nom_rue,CP,Nom_ville) 
VALUES('Mercedes_benz',580,34,'Marie Curie',77000,'Melun');
INSERT INTO Fabricant(Nom_fabricant,Delai,Num_rue,Nom_rue,CP,Nom_ville) 
VALUES('Haas',666,6,'Louis Pasteur',77108,'Chelles');
INSERT INTO Fabricant(Nom_fabricant,Delai,Num_rue,Nom_rue,CP,Nom_ville) 
VALUES('Aston Martin',100,71,'Coco Chanel',77186,'Fontainebleau');
INSERT INTO Fabricant(Nom_fabricant,Delai,Num_rue,Nom_rue,CP,Nom_ville) 
VALUES('Alpine',205,67,'Charles Baudelaire',77100,'Meaux');

--Table Modele
INSERT INTO Modele(Nom_modele,Type_modele,Motorisation,Nom_fabricant)
VALUES ('R2-D2','Stars','Vsport','Mercedes_benz');
INSERT INTO Modele(Nom_modele,Type_modele,Motorisation,Nom_fabricant)
VALUES ('C-3PO','Wars','Vgalaxy','Mercedes_benz');
INSERT INTO Modele(Nom_modele,Type_modele,Motorisation,Nom_fabricant)
VALUES ('Megatron','Destruction','Transformers','Haas');
INSERT INTO Modele(Nom_modele,Type_modele,Motorisation,Nom_fabricant)
VALUES ('Curiosity','Mars','Extra-terrestre','Aston Martin');
INSERT INTO Modele(Nom_modele,Type_modele,Motorisation,Nom_fabricant)
VALUES ('RoboCop','Policier','Cyborg','Peugeot');
INSERT INTO Modele(Nom_modele,Type_modele,Motorisation,Nom_fabricant)
VALUES ('F1','Course','Chevaux','Alpine');

--Table Pompier
INSERT INTO Pompier(Id_caserne,Id_pompier,Nom,Prenom,Nom_rue,Num_rue,Nom_ville,CP)
VALUES (9,1,'Guzman','Loic','Voltaire',78,'Villeparisis',77514);
INSERT INTO Pompier(Id_caserne,Id_pompier,Nom,Prenom,Nom_rue,Num_rue,Nom_ville,CP)
VALUES (8,1,'Georges','Lauren','Marie Antoinette',55,'Provins',77379);
INSERT INTO Pompier(Id_caserne,Id_pompier,Nom,Prenom,Nom_rue,Num_rue,Nom_ville,CP)
VALUES (4,1,'Sagesse','Sophie','Albert Camus',13,'Melun',77000);
INSERT INTO Pompier(Id_caserne,Id_pompier,Nom,Prenom,Nom_rue,Num_rue,Nom_ville,CP)
VALUES (10,1,'Lutin','Fabrice','Gustave Eiffel',32,'Pontault-Combault',77373);
INSERT INTO Pompier(Id_caserne,Id_pompier,Nom,Prenom,Nom_rue,Num_rue,Nom_ville,CP)
VALUES (8,2,'Augustin','Emma','Simone de Beauvoir',8,'Provins',77379);
INSERT INTO Pompier(Id_caserne,Id_pompier,Nom,Prenom,Nom_rue,Num_rue,Nom_ville,CP)
VALUES (10,3,'BIBS','Jaffar','Claude Monet',40,'Nanteuil-lès-Meaux',77330);
INSERT INTO Pompier(Id_caserne,Id_pompier,Nom,Prenom,Nom_rue,Num_rue,Nom_ville,CP)
VALUES (3,2,'BIBS','Mapathe','Molière',22,'Lagny-sur-Marne',77243);
INSERT INTO Pompier(Id_caserne,Id_pompier,Nom,Prenom,Nom_rue,Num_rue,Nom_ville,CP)
VALUES (9,4,'BIBS','Leo','René Descartes',50,'Mitry-Mory',77294);
INSERT INTO Pompier(Id_caserne,Id_pompier,Nom,Prenom,Nom_rue,Num_rue,Nom_ville,CP)
VALUES (2,1,'Gaie','Annie','Louis Armstrong',9,'Chelles',77108);
INSERT INTO Pompier(Id_caserne,Id_pompier,Nom,Prenom,Nom_rue,Num_rue,Nom_ville,CP)
VALUES (6,1,'Dupuis','Marc','Marie Antoinette',9,'Chelles',77108);
INSERT INTO Pompier(Id_caserne,Id_pompier,Nom,Prenom,Nom_rue,Num_rue,Nom_ville,CP)
VALUES (1,1,'Chemin','Paul','Saint-Exupery',9,'Lagny-sur-Marne',77243);
INSERT INTO Pompier(Id_caserne,Id_pompier,Nom,Prenom,Nom_rue,Num_rue,Nom_ville,CP)
VALUES (7,1,'Epenet','Lea','Blaise Pascal',76,'Melun',77000);
INSERT INTO Pompier(Id_caserne,Id_pompier,Nom,Prenom,Nom_rue,Num_rue,Nom_ville,CP)
VALUES (5,1,'Loussan','Louisan','Serge Gainsbourg',9,'Melun',77000);

--Table Camion
INSERT INTO Camion(Id_caserne,Id_camion,Nb_places,Modele)
VALUES (1,1,38,'RoboCop');
INSERT INTO Camion(Id_caserne,Id_camion,Nb_places,Modele)
VALUES (2,1,52,'Curiosity');
INSERT INTO Camion(Id_caserne,Id_camion,Nb_places,Modele)
VALUES (10,1,152,'C-3PO');
INSERT INTO Camion(Id_caserne,Id_camion,Nb_places,Modele)
VALUES (1,2,72,'Megatron');
INSERT INTO Camion(Id_caserne,Id_camion,Nb_places,Modele)
VALUES (3,1,95,'Curiosity');
INSERT INTO Camion(Id_caserne,Id_camion,Nb_places,Modele)
VALUES (2,2,87,'R2-D2');
INSERT INTO Camion(Id_caserne,Id_camion,Nb_places,Modele)
VALUES (4,1,39,'RoboCop');
INSERT INTO Camion(Id_caserne,Id_camion,Nb_places,Modele)
VALUES (6,1,95,'F1');
INSERT INTO Camion(Id_caserne,Id_camion,Nb_places,Modele)
VALUES (5,1,55,'Megatron');
INSERT INTO Camion(Id_caserne,Id_camion,Nb_places,Modele)
VALUES (7,1,35,'F1');
INSERT INTO Camion(Id_caserne,Id_camion,Nb_places,Modele)
VALUES (9,1,58,'RoboCop');
INSERT INTO Camion(Id_caserne,Id_camion,Nb_places,Modele)
VALUES (8,1,51,'Curiosity');
INSERT INTO Camion(Id_caserne,Id_camion,Nb_places,Modele)
VALUES (5,2,51,'C-3PO');
INSERT INTO Camion(Id_caserne,Id_camion,Nb_places,Modele)
VALUES (5,3,51,'C-3PO');

--Table Citerne
INSERT INTO Citerne(Id_caserne,Id_camion,Contenance)
VALUES(1,1,800);
INSERT INTO Citerne(Id_caserne,Id_camion,Contenance)
VALUES(1,2,600);
INSERT INTO Citerne(Id_caserne,Id_camion,Contenance)
VALUES(2,1,900);
INSERT INTO Citerne(Id_caserne,Id_camion,Contenance)
VALUES(2,2,2000);
INSERT INTO Citerne(Id_caserne,Id_camion,Contenance)
VALUES(3,1,500);
INSERT INTO Citerne(Id_caserne,Id_camion,Contenance)
VALUES(4,1,450);
INSERT INTO Citerne(Id_caserne,Id_camion,Contenance)
VALUES(5,1,1200);
INSERT INTO Citerne(Id_caserne,Id_camion,Contenance)
VALUES(6,1,1200);
INSERT INTO Citerne(Id_caserne,Id_camion,Contenance)
VALUES(7,1,1200);
INSERT INTO Citerne(Id_caserne,Id_camion,Contenance)
VALUES(8,1,1200);
INSERT INTO Citerne(Id_caserne,Id_camion,Contenance)
VALUES(9,1,1200);
INSERT INTO Citerne(Id_caserne,Id_camion,Contenance)
VALUES(10,1,1200);

COMMIT;
END TRANSACTION;
