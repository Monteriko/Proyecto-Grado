-- Insertar personajes --
/*
insert into proyecto.protagonista value (id_protagonista,'Fernando','Hombre de 28 años que aprecia el trabajo que su bida personal',curdate(),curdate(),curdate(),curdate(),1);
insert into proyecto.protagonista value (id_protagonista,'Inuyasha','Hombre de 24 años que se preocupa mas de si mismo que de los demas',curdate(),curdate(),curdate(),curdate(),1);
insert into proyecto.protagonista value (id_protagonista,'Ivanovski','Hombre de 40 años que tiene el ideal de no se puede juzgar si no ocurio nada',curdate(),curdate(),curdate(),curdate(),1);
delete from proyecto.protagonista where id_protagonista = 2;
select * from proyecto.protagonista;

-- Aventura --

insert into proyecto.aventuras value (id_aventuras,'El Detective','La historia va de un detective que intenta resolver un caso pero ese caso se le tuerce. ¿Que pasara con el detective?',fechacreacion,null,null,null);
select * from proyecto.aventuras;

-- Pasos --

insert into proyecto.pasos value (id_pasos,'El detective %personaje% que trabaja en la policia hace 6 años, le dan un caso en el cual han asesinado a una mujer de 43 años en una casa
en medio de la montaña. El detective llega con 2 policias más Laura y Miquel a la casa donde observan que no hay nada alrededor,
unicamente la casa con un porton muy grande.','Escojes el camino del centro, a l lejos se ve una fuente y una casa muy vieja y tetrica.
',null,null,null,null,1);

insert into proyecto.pasos value (id_pasos,'El detective %personaje% que trabaja en la policia hace 6 años, le dan un caso en el cual han asesinado a una mujer de 43 años en una casa
en medio de la montaña. El detective llega con 2 policias más Laura y Miquel a la casa donde observan que no hay nada alrededor,
unicamente la casa con un porton muy grande.','Escoges rodear la casa, ves mucho arbusto y todo verde con rejas que te impide entrar y ver en la casa.
',null,null,null,null,1);
insert into proyecto.pasos value (id_pasos,'Abres la puerta haciendo mucho ruido, ves a los cuervos volar y empiezas a andar hasta la fuente que estaba cerca de una gran puerta para entrar a la casa, cuendo te encuentras por la mitad del camino ves una luz roja desde la ventana y cuandoibas a avisar a tus compañeros, suena un ruido de un disparo miras hacia un lado y ves a Miquel en el suelo cin mucha sangre, escuchas gritar a Laura, reaccionas miras alrededor y empiezas a correr gritas a Laura para que te siga, pero ves que no te escucha y empiezas a correr hacia el gran porton, escuchas otro disparo, ves a Laura a lo lejos caer al suelo, ya has llegado a los arbustos te sientas y te escondes intentas coger el walki talkie pero ves que te se a caido en medio del jardin, desenfundas tu pistola y piensas que hacer...','Te armas de valor y decides ir a por el asesino cargado de rabia rodeando los arbustos y la casa para poder entrar',null,null,null,null,1);
insert into proyecto.pasos value (id_pasos,'Abres la puerta haciendo mucho ruido, ves a los cuervos volar y empiezas a andar hasta la fuente que estaba cerca de una gran puerta para entrar a la casa, cuendo te encuentras por la mitad del camino ves una luz roja desde la ventana y cuandoibas a avisar a tus compañeros, suena un ruido de un disparo miras hacia un lado y ves a Miquel en el suelo cin mucha sangre, escuchas gritar a Laura, reaccionas miras alrededor y empiezas a correr gritas a Laura para que te siga, pero ves que no te escucha y empiezas a correr hacia el gran porton, escuchas otro disparo, ves a Laura a lo lejos caer al suelo, ya has llegado a los arbustos te sientas y te escondes intentas coger el walki talkie pero ves que te se a caido en medio del jardin, desenfundas tu pistola y piensas que hacer...','Sigues esperando porque el miedo te apodera , esperas un poco y cuando puedas huyes',null,null,null,null,1);
insert into proyecto.pasos value (id_pasos,'Al rodear la casa ves una parte de la reja que esta rota intentas entrar por ese ajugero, al entrar ves una persona en el suelo y piensas en lo siguiente','Te acercas a esa persona en el suelo',null,null,null,null,1);
insert into proyecto.pasos value (id_pasos,'Al rodear la casa ves una parte de la reja que esta rota intentas entrar por ese ajugero, al entrar ves una persona en el suelo y piensas en lo siguiente','Ignoras a la persona y buscas una puerta trasera para poder entrar',null,null,null,null,1);
insert into proyecto.pasos value (id_pasos,'Una persona se esta acercando con una arma en la mano te escondes y cuando esta en frente de laura le asaltas y lo detienes, llamas  una anbulancia paara que atiendan lo maas rapido a laura.','',null,null,null,null,1);
insert into proyecto.pasos value (id_pasos,'Entras por la puerta trasera y parece que el asesino ya estaba esperando a que entraras te comienza a disparar y te mata con un disparo en la cabeza.','',null,null,null,null,1);

select * from proyecto.pasos;
-- Respuestas --

insert into proyecto.respuestas value (id_respuestas,'Observas que el porton esta medio abierto y lo tienes decidido , quieres acabar rápido con el caso y llegar al cuartel para descansar.',null,null,null,null,1);
insert into proyecto.respuestas value (id_respuestas,'Observas que el asesino podria enterarse de que estas en la casa si vas por el camino del entro y empiecas a rodear la casa.',null,null,null,null,2);
insert into proyecto.respuestas value (id_respuestas,'Entras en la casa y se cierra la puerta, no la puedes habrir y de repente escuchas unos pasos, no tienes mas remedio que ir de frente y de repente escuchas el sonido de una arma disparando , no notas que te ha dispardo a ti, te desangras y mueres.',null,null,null,null,3);
insert into proyecto.respuestas value (id_respuestas,'Esuchas el sonido de una rama partirse empiezas a girarte y ves a una persona apuntandote con la pistola y mueres por un disparo.',null,null,null,null,4);
insert into proyecto.respuestas value (id_respuestas,'Al acercarte hacia la persona en el suelo ves que la persona era Laura que esta sangrando por culpa de un disparo.',null,null,null,null,5);
insert into proyecto.respuestas value (id_respuestas,'Al ignorar a la persona bas camino hacia la parte trasera.',null,null,null,null,6);
*/

select * from proyecto.respuestas