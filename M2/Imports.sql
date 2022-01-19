-- Insertar personajes --

insert into proyecto.protagonista value (id_protagonista,'Fernando','Hombre de 28 años que aprecia el trabajo que su bida personal',curdate(),curdate(),curdate(),curdate(),1);
insert into proyecto.protagonista value (id_protagonista,'Inuyasha','Hombre de 24 años que se preocupa mas de si mismo que de los demas',curdate(),curdate(),curdate(),curdate(),1);
insert into proyecto.protagonista value (id_protagonista,'Ivanovski','Hombre de 40 años que tiene el ideal de no se puede juzgar si no ocurio nada',curdate(),curdate(),curdate(),curdate(),1);

#delete from proyecto.protagonista where id_protagonista = 2;
select * from proyecto.protagonista;
insert into proyecto.aventuras value (id_aventuras,'El Detective','La historia va de un detective que intenta resolver un caso pero ese caso se le tuerce. ¿Que pasara con el detective?',curdate(),curdate(),curdate(),curdate(),1);