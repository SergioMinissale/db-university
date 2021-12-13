-- SCHEMA
CREATE DATABASE `db_university`;
USE `db_university`;

CREATE TABLE `dipartimento`(
`id` INT NOT NULL AUTO_INCREMENT,
`sede` VARCHAR(255) NOT NULL,
`numero_segreteria` CHAR(10),
`email_segreteria` VARCHAR(100) NOT NULL,
PRIMARY KEY(`id`)
);

CREATE TABLE `corsi_di_laurea`(
`id` INT NOT NULL AUTO_INCREMENT,
`tipo_corso` VARCHAR(20)NOT NULL,
`nome` VARCHAR(255) NOT NULL,
`dipartimento_id` INT NOT NULL,
PRIMARY KEY(`id`),
FOREIGN KEY(`dipartimento_id`) REFERENCES dipartimento(`id`)
);

CREATE TABLE `corsi_materie`(
`id` INT NOT NULL AUTO_INCREMENT,
`nome` VARCHAR(100) NOT NULL, 
`durata_totale` INT,
`corsi_di_laurea_id`INT NOT NULL,
PRIMARY KEY(`id`),
FOREIGN KEY(`corsi_di_laurea_id`) REFERENCES corsi_di_laurea(`id`)
);

CREATE TABLE `studente`(
`id` INT NOT NULL AUTO_INCREMENT,
`nome` VARCHAR(100) NOT NULL,
`cognome` VARCHAR(100) NOT NULL,
`matricola` CHAR(8) NOT NULL,
`email` VARCHAR(100),
`corsi_di_laurea_id`INT NOT NULL,
PRIMARY KEY(`id`),
FOREIGN KEY(`corsi_di_laurea_id`) REFERENCES corsi_di_laurea(`id`)
);

CREATE TABLE `appello`(
`id` INT NOT NULL AUTO_INCREMENT,
`nome` VARCHAR(100) NOT NULL,
`data` DATE NOT NULL,
`corsi_materie_id` INT not null,
PRIMARY KEY(`id`),
foreign KEY(`corsi_materie_id`) REFERENCES corsi_materie(`id`) 
);

CREATE TABLE `voto`(
`id` INT NOT NULL AUTO_INCREMENT,
`studente_id` INT not null,
`appello_id` INT not null,
PRIMARY KEY(`id`),
FOREIGN KEY(`studente_id`) REFERENCES studente(`id`),
FOREIGN KEY(`appello_id`) REFERENCES appello(`id`),
);

CREATE TABLE `docente`(
`id` INT NOT NULL AUTO_INCREMENT,
`nome` VARCHAR(100) NOT NULL,
`cognome` VARCHAR(100) NOT NULL,
`email` VARCHAR(100),
PRIMARY KEY(`id`)
);

