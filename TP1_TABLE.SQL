ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY';

/*-----------------------------------------------1-----------------------------------------------*/

DROP TABLE UTILISATEURS CASCADE CONSTRAINTS;

DROP TABLE LIENS CASCADE CONSTRAINTS;
DROP TABLE RELIER CASCADE CONSTRAINTS;

DROP TABLE PAGES CASCADE CONSTRAINTS;
DROP TABLE PUBLICATIONS CASCADE CONSTRAINTS;

DROP TABLE GROUPES CASCADE CONSTRAINTS;
DROP TABLE REUNIR CASCADE CONSTRAINTS;

DROP TABLE AIMER_PAGE CASCADE CONSTRAINTS;
DROP TABLE AIMER_PUBLICATION CASCADE CONSTRAINTS;

DROP TABLE TCHATS CASCADE CONSTRAINTS;
DROP TABLE MESSAGES CASCADE CONSTRAINTS;



/*-----------------------------------------------2-----------------------------------------------*/


/*
	Un utilisateur est composé de ses attributs
	Il a pour cle primaire, un numero d'utilisateur
	DATE_FERM peut avoir comme valeur NULL jusqu'a la fermeture de son compte
*/
CREATE TABLE UTILISATEURS(
	NUM_USER 			VARCHAR2(10),
	PSEUDO 				VARCHAR2(50) NOT NULL,
	MDP 				VARCHAR2(100) NOT NULL,
	NOM 				VARCHAR2(50) NOT NULL,
	PRENOM 				VARCHAR2(50) NOT NULL,
	EMAIL 				VARCHAR2(100) NOT NULL,
	NUM_TEL 			NUMBER(10) NOT NULL,
	DATENAISSANCE 		DATE NOT NULL,
	SEXE 				CHAR(1) NOT NULL,
	PAYS 				VARCHAR2(100) NOT NULL,
	VILLE 				VARCHAR2(100) NOT NULL,
	DATE_INSC 			DATE NOT NULL,
	DATE_FERM 			DATE,
	CONSTRAINT pk_utilisateurs_num_user PRIMARY KEY(NUM_USER),
	CONSTRAINT uc_utilisateurs_pseudo UNIQUE(PSEUDO),
	CONSTRAINT ck_utilisateurs_sexe CHECK(SEXE IN('F','M')),
    CONSTRAINT ck_utilisateurs_date_ferm CHECK(DATE_INSC <= DATE_FERM)
);

/*
	Il a pour cle primaire, un numero de liens, qui lie deux utilisateurs ami ou en couple
*/
CREATE TABLE LIENS(
	NUM_LIENS 			VARCHAR(10),
	LIENS 				VARCHAR2(25) NOT NULL,
    NUM_USER2 			VARCHAR2(10) NOT NULL,
	DATE_LIAISON 		DATE NOT NULL,
	CONSTRAINT pk_liens_num_liens PRIMARY KEY(NUM_LIENS),
    CONSTRAINT fk_liens_num_user FOREIGN KEY(NUM_USER2) REFERENCES UTILISATEURS(NUM_USER),
    CONSTRAINT ck_liens_liens CHECK(LIENS IN('Couple','Ami'))
);

/*
	Deux utilisateurs sont relié grace a la table RELIER
	Qui aura pour cle primaire, le numero de l'utilisateur et de liens
	Le numero de User1 sera dans la table RELIER
	Le numero de User2 sera dans la table LIENS
*/
CREATE TABLE RELIER(
    NUM_USER 			VARCHAR2(10),
    NUM_LIENS 			VARCHAR2(10),
    CONSTRAINT pk_relier_num_user_num_liens PRIMARY KEY(NUM_USER, NUM_LIENS),
    CONSTRAINT fk_relier_num_user FOREIGN KEY(NUM_USER) REFERENCES UTILISATEURS(NUM_USER),
    CONSTRAINT fk_relier_num_liens FOREIGN KEY(NUM_LIENS) REFERENCES LIENS(NUM_LIENS)
);



/*-----------------------------------------------3-----------------------------------------------*/



/*
	Permets a un utilisateur de creer une page publique ou privée, où l'on peut publier des publications
	Chaque page a son proprietaire
*/
CREATE TABLE PAGES(
	NUM_PAGE 			VARCHAR2(10),
	NUM_USER 			VARCHAR2(10),
	TYPE_PAGE 			VARCHAR2(25) NOT NULL,
	CONSTRAINT pk_pages_num_page PRIMARY KEY(NUM_PAGE),
	CONSTRAINT fk_pages_num_user FOREIGN KEY(NUM_USER) REFERENCES UTILISATEURS(NUM_USER),
	CONSTRAINT ck_pages_type_page CHECK(TYPE_PAGE IN('Publique','Privée'))
);

/*
	Une publication permets d'etre posté sur une page
	NUM_PAGE peut etre null, car il nappartient pas forcement a une page
	NUM_PUB_PERE peut etre null, car on ne reponds pas forcement sur chaque publication
*/
CREATE TABLE PUBLICATIONS(
	NUM_PUBLICATION 	VARCHAR2(10),
	NUM_PAGE 			VARCHAR2(10),
	TITRE 				VARCHAR2(100) NOT NULL,
	DATE_PUBLICATION 	DATE NOT NULL,
	TEXTE 				VARCHAR2(500) NOT NULL,
	NB_JAIME 			INTEGER NOT NULL,
	NUM_PUB_PERE		VARCHAR2(10),
	CONSTRAINT pk_publications_num_publication PRIMARY KEY(NUM_PUBLICATION)
);


/*-----------------------------------------------5-----------------------------------------------*/


/*
	Permets a des utilisateurs de se reunir pour parler et poster des publications
	Un groupe a sa propre page pour que les membres du groupe puissent poster des publications
	Un groupe est definis comme une sorte de PAGES
*/
CREATE TABLE GROUPES(
	NUM_GROUPE			VARCHAR2(10),
	NOM_GROUPE			VARCHAR2(25),
	NUM_PAGE 			VARCHAR2(10) NOT NULL,
	CONSTRAINT pk_groupes_num_groupe PRIMARY KEY(NUM_GROUPE),
	CONSTRAINT fk_groupes_num_page FOREIGN KEY(NUM_PAGE) REFERENCES PAGES(NUM_PAGE)
);

/*
	Permets d'affecter un utilisateur a un ou plusieurs groupes
*/
CREATE TABLE REUNIR(
    NUM_GROUPE 			VARCHAR2(10),
	NUM_USER 			VARCHAR2(10),
	CONSTRAINT pk_reunir_num_user_num_groupe PRIMARY KEY(NUM_GROUPE, NUM_USER),
	CONSTRAINT fk_reunir_num_groupe FOREIGN KEY(NUM_GROUPE) REFERENCES GROUPES(NUM_GROUPE),
    CONSTRAINT fk_reunir_num_user FOREIGN KEY(NUM_USER) REFERENCES UTILISATEURS(NUM_USER)
);


/*-----------------------------------------------6-----------------------------------------------*/

CREATE TABLE AIMER_PAGE(
	NUM_USER 			VARCHAR2(10),
	NUM_PAGE 			VARCHAR2(10),
	CONSTRAINT pk_aimer_page_num_user_num_page PRIMARY KEY(NUM_USER, NUM_PAGE),
	CONSTRAINT fk_aimer_page_num_user FOREIGN KEY(NUM_USER) REFERENCES UTILISATEURS(NUM_USER),
	CONSTRAINT fk_aimer_page_num_page FOREIGN KEY(NUM_PAGE) REFERENCES PAGES(NUM_PAGE)
);

CREATE TABLE AIMER_PUBLICATION(
	NUM_USER 			VARCHAR2(10),
	NUM_PUBLICATION 	VARCHAR2(10),
	CONSTRAINT pk_aimer_publication_num_user_num_page PRIMARY KEY(NUM_USER, NUM_PUBLICATION),
	CONSTRAINT fk_aimer_publication_num_user FOREIGN KEY(NUM_USER) REFERENCES UTILISATEURS(NUM_USER),
	CONSTRAINT fk_aimer_publication_num_publication FOREIGN KEY(NUM_PUBLICATION) REFERENCES PUBLICATIONS(NUM_PUBLICATION)
);



/*-----------------------------------------------7-----------------------------------------------*/


/*
	Un tchat peut appartenir a un groupe
	Donc NUM_GROUPE peut etre NULL ou non
	Un tchat peut appartenir a un couple ou ami
	Donc NUM_LIENS peut etre NULL ou non
	Pas de cle etrangere, car NUM_GROUPE ou NUM_LIENS peuvent etre NULL
*/
CREATE TABLE TCHATS(
	NUM_TCHAT			VARCHAR2(10),
	NUM_GROUPE 			VARCHAR2(10),
	NUM_LIENS 			VARCHAR2(10),
	CONSTRAINT pk_tchat_num_tchat PRIMARY KEY(NUM_TCHAT)
);

CREATE TABLE MESSAGES(
	NUM_MESSAGE			VARCHAR2(10),
	NUM_MSG_PERE		VARCHAR2(10),
	DATE_MESSAGE 		DATE NOT NULL,
	TEXTE 				VARCHAR2(255),
	CONSTRAINT pk_tchat_num_message PRIMARY KEY(NUM_MESSAGE)
);












