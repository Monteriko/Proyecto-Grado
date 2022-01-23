drop database if exists proyecto;

create database if not exists proyecto;

use proyecto;

CREATE TABLE usuario (
 id_usuario INT,
 username varchar(14),
 pasword char(8),
 fechacreacion datetime,
 usuariocreacion varchar(15),
 fechamodificacion timestamp,
 usuariomodificacion varchar(15)
);

CREATE TABLE partidas (
 id_partidas INT ,
 usuarios varchar(14),
 aventuras varchar(20),
 fechacreacion datetime,
 usuariocreacion varchar(15),
 fechamodificacion timestamp,
 usuariomodificacion varchar(15),
 id_partidas_protagonista int not Null,
 id_partidas_usuario int not Null,
 id_partidas_aventuras int not Null
);

CREATE TABLE protagonista (
 id_protagonista INT ,
 nombre varchar(14),
 descripcion varchar(200),
 fechacreacion datetime,
 usuariocreacion varchar(15),
 fechamodificacion timestamp,
 usuariomodificacion varchar(15),
 id_protagonista_aventuras int not Null
);

CREATE TABLE aventuras (
 id_aventuras INT,
 nombre varchar(14),
 descripcion varchar(200),
 fechacreacion datetime,
 usuariocreacion varchar(15),
 fechamodificacion timestamp,
 usuariomodificacion varchar(15)
);

CREATE TABLE pasos (
 id_pasos INT ,
 nombre varchar(1000),
 descripcion varchar(1000),
 fechacreacion datetime,
 usuariocreacion varchar(15),
 fechamodificacion timestamp,
 usuariomodificacion varchar(15),
 id_pasos_aventuras int not Null
);

CREATE TABLE respuestas (
 id_respuestas INT,
 nombre varchar(1000),
 fechacreacion datetime,
 usuariocreacion varchar(15),
 fechamodificacion timestamp,
 usuariomodificacion varchar(15),
 id_respuestas_pasos int not Null
);

CREATE TABLE protagonista_has_aventuras (
protagonista_id_protagonista int,
aventuras_id_aventuras int,
fechacreacion datetime,
usuariocreacion varchar(15),
fechamodificacion timestamp,
usuariomodificacion varchar(15)
);
