-- create database the;
-- use the;

create table the_utilisateur (
    id int primary key auto_increment,
    nom varchar(100),
    motdepasse varchar(500),
    isadmin int
);

create table the_the (
    id int primary key auto_increment,
    variete varchar(100),
    occupation int not null,
    rendement decimal(15,2) not null,
    prixvente decimal(15,2) not null
);

create table the_parcelles (
    numeroParcelles int unique,
    surface decimal(12,5) not null,
    idThe int,
    poidsRestant decimal(12,5)
);

create table the_cueilleurs (
    id int primary key auto_increment,
    nom varchar(100),
    genre varchar(500),
    datenaissance date,
    salaire decimal(15,2),
    poidsminimal decimal(15,2),
    bonus decimal(15,2),
    mallus decimal(15,2)
);


create table the_cueillettes (
    id int primary key auto_increment,
    daty date, 
    idCueilleur int,
    idParcelle int,
    poidsCueilli decimal(15,2)
);

create table the_categories_depense (
    id int primary key auto_increment,
    nom varchar(100)
);

create table the_depenses (
    id int primary key auto_increment,
    montant decimal(15,2),
    datedepense date,
    idParcelle int,
    idCategorie_depense int
);

create table the_saison (
    id int primary key auto_increment,
    idThe int,
    mois int
);


create table the_paiementsCueilleur (
    id int primary key auto_increment,
    daty date, 
    nomCueilleur varchar(100),
    poids decimal(15,5),
    bonus decimal(15,5) ,
    mallus decimal(15,5) ,
    montantPaiement decimal(15,5)
);



-- DONNEES DE TEST
insert into the_utilisateur values 
(null, 'admin', 'admin', 0),
(null, 'tsiry', 'tsiry', 1),
(null, 'cedric', 'cedric', 1),
(null, 'miora', 'miora', 1);

insert into the_the values 
(null, 'the1', 10, 1, 1000),
(null, 'the2', 1, 10, 1000),
(null, 'the3', 12, 8, 1000),
(null, 'the4', 20, 7, 1000),
(null, 'the5', 1, 12, 1000),
(null, 'the6', 2, 15, 1000);

insert into the_cueilleurs values 
(null, 'kiady', 'homme', '2004-10-10', 20000, 100, 10, 10),
(null, 'mihary', 'homme', '2003-10-10', 1000, 100, 10, 10),
(null, 'lala', 'femme', '2002-10-10', 5000, 100, 10, 10),
(null, 'amboara', 'femme', '2001-10-10', 600, 100, 10, 10),
(null, 'boom', 'homme', '2006-10-10', 2000, 100, 10, 10);

insert into the_parcelles values 
(1, 1, 6, 10),
(2, 5, 6, 10),
(3, 3, 8, 10),
(4, 10, 6, 10),
(5, 1, 10, 10);

insert into the_categories_depense values
(null, 'Engrais'),
(null, 'Logistiques'),
(null, 'Transport'),
(null, 'Divers');


insert into the_cueillettes values 
(null, '2023-01-01', 1, 1, 2),
(null, '2023-01-02', 2, 2, 1),
(null, '2023-01-03', 3, 3, 2),
(null, '2023-01-04', 4, 4, 6),
(null, '2023-01-05', 5, 3, 7),
(null, '2023-01-06', 1, 5, 3);