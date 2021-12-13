INSERT INTO `dipartimento`(`sede`,`email_segreteria`) VALUES ('P.za Leonardo da Vinci, Milano', 'pppppp@gmail.com');
INSERT INTO `dipartimento`(`sede`,`email_segreteria`) VALUES ('via teresio Passoni , Milano', 'bbbbb@gmail.com');

INSERT into `corsi_di_laurea`(`tipo_corso`,`nome`,`dipartimento_id`) values ('magistrale','economia', '1');
INSERT into `corsi_di_laurea`(`tipo_corso`,`nome`,`dipartimento_id`) values ('triennale','informatica', '2');

INSERT INTO `corsi_materie`(`nome`,`durata_totale`, `corsi_di_laurea_id`) VALUES ('Statistica', '150', '1');

INSERT INTO `studente`(`nome`,`cognome`,`matricola`, `corsi_di_laurea_id`) values('Luca','Porta','11111111','1');
INSERT INTO `studente`(`nome`,`cognome`,`matricola`, `corsi_di_laurea_id`) values('Gianluca','Gatto','22222222','2');

insert into `appello`(`nome`,`data`,`corsi_materie_id`) values('statistica','2021-12-21','1');
insert into `appello`(`nome`,`data`,`corsi_materie_id`) values('programmazione','2022-03-21','2');

insert into `voto`(`voto`,`studente_id`,`appello_id`) values('27', '1','1');
insert into `voto`(`voto`,`studente_id`,`appello_id`) values('18', '2','2');

insert into `docente`(`nome`,`cognome`) values('Gianna','Magenta');
insert into `docente`(`nome`,`cognome`) values('Matteo','Lucano');

insert into `docente_corsi_materie`(`docente_id`,`corsi_materie_id`) values('1','1');
insert into `docente_corsi_materie`(`docente_id`,`corsi_materie_id`) values('2','2');