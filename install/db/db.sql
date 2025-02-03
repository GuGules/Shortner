drop DATABASE if exists shortner_db;

create DATABASE shortner_db;
use shortner_db;

create table campagne(
    id int PRIMARY key AUTO_INCREMENT,
    name varchar(255) NOT NULL unique,
    date_creation timestamp DEFAULT CURRENT_TIMESTAMP,
    lien_cible text NOT NULL
)

create table origine_id (
    id int PRIMARY KEY AUTO_INCREMENT,
    libelle varchar(50) not null
)

create table visite(
    id int PRIMARY key AUTO_INCREMENT,
    date_visite timestamp,
    id_campagne int REFERENCES campagne(id),
    origine_id int 
)

create table config(
    id int PRIMARY KEY AUTO_INCREMENT,
    nom varchar(50) not null,
    valeur varchar(255) not null
)