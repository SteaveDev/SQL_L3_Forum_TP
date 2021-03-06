DELETE FROM ACTIVITES_PRATIQUEES;
DELETE FROM ACTIVITES;
DELETE FROM RESULTATS;
DELETE FROM CHARGE;
DELETE FROM PROFESSEURS;
DELETE FROM COURS;
DELETE FROM ELEVES;

INSERT INTO ELEVES (NUM_ELEVE, NOM, PRENOM, DATE_NAISSANCE, POIDS, ANNEE, SEXE)
VALUES(1, 'Brisefer', 'Benoit', '10-12-1978', 35,1, 'M') ;

INSERT INTO ELEVES (NUM_ELEVE, NOM, PRENOM, DATE_NAISSANCE, POIDS, ANNEE, SEXE)
VALUES(2, 'Génial', 'Olivier', '10-04-1978', 42, 1, 'M') ;

INSERT INTO ELEVES (NUM_ELEVE, NOM, PRENOM, DATE_NAISSANCE, POIDS, ANNEE, SEXE)
VALUES(3, 'Jourdan', 'Gil', '28-06-1974', 72, 2, 'F') ;

INSERT INTO ELEVES (NUM_ELEVE, NOM, PRENOM, DATE_NAISSANCE, POIDS, ANNEE, SEXE)
VALUES(4, 'Spring', 'Jerry', '16-02-1974', 78, 2, 'M') ;

INSERT INTO ELEVES (NUM_ELEVE, NOM, PRENOM, DATE_NAISSANCE, POIDS, ANNEE, SEXE)
VALUES(5, 'Tsuno', 'Yoko', '29-10-1977', 45, 1, 'F') ;

INSERT INTO ELEVES (NUM_ELEVE, NOM, PRENOM, DATE_NAISSANCE, POIDS, ANNEE, SEXE)
VALUES(6, 'Lebut', 'Marc', '29-04-1974', 75,2, 'M') ;

INSERT INTO ELEVES (NUM_ELEVE, NOM, PRENOM, DATE_NAISSANCE, POIDS, ANNEE, SEXE)
VALUES(7, 'Lagaffe', 'Gaston', '08-04-1975', 61,1, 'M') ;

INSERT INTO ELEVES (NUM_ELEVE, NOM, PRENOM, DATE_NAISSANCE, POIDS, ANNEE, SEXE)
VALUES(8, 'Dubois', 'Robin', '20-04-1976', 60, 2, 'M') ;

INSERT INTO ELEVES (NUM_ELEVE, NOM, PRENOM, DATE_NAISSANCE, POIDS, ANNEE, SEXE)
VALUES(9, 'Walthéry', 'Natacha', '07-09-1977', 59,1, 'F') ;

INSERT INTO ELEVES (NUM_ELEVE, NOM, PRENOM, DATE_NAISSANCE, POIDS, ANNEE, SEXE)
VALUES(10, 'Danny', 'Buck', '15-02-1973', 82, 2, 'M') ;


INSERT INTO COURS (NUM_COURS, NOM, NBHEURES, ANNEE)
VALUES(1, 'Réseau', 15, 1);

INSERT INTO COURS (NUM_COURS, NOM, NBHEURES, ANNEE)
VALUES(2, 'Sgbd', 30, 1) ;

INSERT INTO COURS (NUM_COURS, NOM, NBHEURES, ANNEE)
VALUES(3, 'Programmation', 15,1) ;

INSERT INTO COURS (NUM_COURS, NOM, NBHEURES, ANNEE)
VALUES(4, 'Sgbd', 30,2 ) ;

INSERT INTO COURS (NUM_COURS, NOM, NBHEURES, ANNEE)
VALUES(5, 'Analyse', 60,2) ;


INSERT INTO PROFESSEURS (NUM_PROF, NOM , SPECIALITE, DATE_ENTREE, DER_PROM, SALAIRE_BASE, SALAIRE_ACTUEL)
VALUES(1, 'Bottle', 'poésie', '01-10-1970', '01-10-1988', 2000000, 2600000) ;

INSERT INTO PROFESSEURS (NUM_PROF, NOM , SPECIALITE, DATE_ENTREE, DER_PROM, SALAIRE_BASE, SALAIRE_ACTUEL)
VALUES(2, 'Bolenov', 'réseau', '15-11-1968', '01-10-1998', 1900000, 2468000) ;

INSERT INTO PROFESSEURS (NUM_PROF, NOM , SPECIALITE, DATE_ENTREE, DER_PROM, SALAIRE_BASE, SALAIRE_ACTUEL)
VALUES(3, 'Tonilaclasse', 'poo', '01-10-1979', '01-01-1989', 1900000, 2360000) ;

INSERT INTO PROFESSEURS (NUM_PROF, NOM , SPECIALITE, DATE_ENTREE, DER_PROM, SALAIRE_BASE, SALAIRE_ACTUEL)
VALUES(4, 'Pastecnov', 'sql', '01-10-1975', '', 2500000, 2500000) ;

INSERT INTO PROFESSEURS (NUM_PROF, NOM , SPECIALITE, DATE_ENTREE, DER_PROM, SALAIRE_BASE, SALAIRE_ACTUEL)
VALUES(5, 'Selector', 'sql', '15-10-1982', '01-10-1988', 1900000, 1900000) ;

INSERT INTO PROFESSEURS (NUM_PROF, NOM , SPECIALITE, DATE_ENTREE, DER_PROM, SALAIRE_BASE, SALAIRE_ACTUEL)
VALUES(6, 'Vilplusplus', 'poo', '25-04-1990', '05-06-1994', 1900000, 2200000) ;

INSERT INTO PROFESSEURS (NUM_PROF, NOM , SPECIALITE, DATE_ENTREE, DER_PROM, SALAIRE_BASE, SALAIRE_ACTUEL)
VALUES(7, 'Francesca', '', '01-10-1975', '11-01-1998', 2000000, 3200000) ;

INSERT INTO PROFESSEURS (NUM_PROF, NOM , SPECIALITE, DATE_ENTREE, DER_PROM, SALAIRE_BASE, SALAIRE_ACTUEL)
VALUES(8, 'Pucette', 'sql', '06-12-1988', '29-02-1996', 2000000, 2500000) ;

INSERT INTO CHARGE (NUM_PROF, NUM_COURS)
VALUES(1,1) ;

INSERT INTO CHARGE (NUM_PROF, NUM_COURS)
VALUES(1,4) ;

INSERT INTO CHARGE (NUM_PROF, NUM_COURS)
VALUES(2,1) ;

INSERT INTO CHARGE (NUM_PROF, NUM_COURS)
VALUES(3,2) ;

INSERT INTO CHARGE (NUM_PROF, NUM_COURS)
VALUES(3,4) ;

INSERT INTO CHARGE (NUM_PROF, NUM_COURS)
VALUES(3,5) ;

INSERT INTO CHARGE (NUM_PROF, NUM_COURS)
VALUES(4,2) ;

INSERT INTO CHARGE (NUM_PROF, NUM_COURS)
VALUES(7,4) ;

INSERT INTO CHARGE (NUM_PROF, NUM_COURS)
VALUES(8,1) ;

INSERT INTO CHARGE (NUM_PROF, NUM_COURS)
VALUES(8,2) ;

INSERT INTO CHARGE (NUM_PROF, NUM_COURS)
VALUES(8,3) ;

INSERT INTO CHARGE (NUM_PROF, NUM_COURS)
VALUES(8,4) ;

INSERT INTO CHARGE (NUM_PROF, NUM_COURS)
VALUES(8,5) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(1,1, 15 ) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(1,2 ,10.5 ) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(1, 4, 8) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(1, 5, 20) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(2, 1, 13.5) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(2, 2, 12) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(2, 4, 11) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(2, 5, 1.5) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(3, 1, 14) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(3, 2, 15) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(3, 4, 16) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(3, 5, 20) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(4, 1, 16.5) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(4, 2, 14) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(4, 4, 11) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(4, 5, 8) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(5, 1, 5) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(5, 2, 6.5) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(5, 4, 13) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(5, 5, 13) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(6, 1, 15) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(6, 2, 3.5) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(6, 4, 16) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(6, 5, 5) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(7, 1, 2.5) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(7, 2, 18) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(7, 4, 11) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(7, 5, 10) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(8, 1, 16) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(8, 2, 0) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(8, 4, 6) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(8, 5, 11.5) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(9, 1, 20) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(9, 2, 20) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(9, 4, 14) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(9, 5, 9.5) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(10, 1, 3) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(10, 2, 12.5) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(10, 4, 0) ;

INSERT INTO RESULTATS (NUM_ELEVE, NUM_COURS, POINTS)
VALUES(10, 5, 16) ;

INSERT INTO ACTIVITES (NIVEAU, NOM, EQUIPE)
VALUES(1,'Mini foot','Amc Indus') ;

Insert into ACTIVITES (Niveau, Nom, equipe) 
values (1,'Surf','Les planchistes ...') ;

INSERT INTO ACTIVITES (NIVEAU, NOM, EQUIPE)
VALUES(2,'Tennis','Ace Club') ;

INSERT INTO ACTIVITES (NIVEAU, NOM, EQUIPE)
VALUES(3,'Tennis','Ace Club') ;

INSERT INTO ACTIVITES (NIVEAU, NOM, EQUIPE)
VALUES(1,'Volley ball', 'Avs80') ;

INSERT INTO ACTIVITES (NIVEAU, NOM, EQUIPE)
VALUES(2,'Mini foot', 'Les as du ballon') ;

INSERT INTO ACTIVITES (NIVEAU, NOM, EQUIPE)
VALUES(2,'Volley ball', 'smash') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (1, 1, 'Mini foot') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (1, 1, 'Surf') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (1, 1, 'Volley ball') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (1, 2, 'Tennis') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (2, 1, 'Mini foot') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (2, 2, 'Tennis') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (3, 2, 'Mini foot') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (3, 2, 'Tennis') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (3, 2, 'Volley ball') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (4, 1, 'Surf') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (4, 2, 'Mini foot') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (5, 1, 'Mini foot') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (5, 1, 'Surf') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (5, 1, 'Volley ball') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (8, 1, 'Mini foot') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (8, 1, 'Volley ball') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (8, 2, 'Volley ball') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (9, 1, 'Mini foot') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (9, 2, 'Volley ball') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (10, 1, 'Mini foot') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (10, 2, 'Tennis') ;

INSERT INTO ACTIVITES_PRATIQUEES (NUM_ELEVE, NIVEAU, NOM)
VALUES (10, 2, 'Volley ball') ;