alter table usuario
add primary key (id_usuario),
add unique (id_usuario),
modify id_usuario int auto_increment,
modify fechamodificacion timestamp NULL DEFAULT current_timestamp on update current_timestamp,
modify fechacreacion datetime NULL DEFAULT current_timestamp,
modify usuariomodificacion varchar(15) NULL
;

create unique index indice_usuario on usuario (id_usuario);

alter table protagonista
add primary key (id_protagonista),
add unique (id_protagonista),
modify id_protagonista int auto_increment,
modify fechamodificacion timestamp NULL DEFAULT current_timestamp on update current_timestamp,
modify fechacreacion datetime NULL DEFAULT current_timestamp,
modify usuariomodificacion varchar(15) NULL;

create unique index indice_protagonista on protagonista (id_protagonista);

alter table aventuras
add primary key (id_aventuras),
add unique (id_aventuras),
modify id_aventuras int auto_increment,
modify fechamodificacion timestamp NULL DEFAULT current_timestamp on update current_timestamp,
modify fechacreacion datetime NULL DEFAULT current_timestamp,
modify usuariomodificacion varchar(15) NULL;

create unique index indice_aventuras on aventuras (id_aventuras);

alter table pasos
add primary key (id_pasos),
add unique (id_pasos),
modify id_pasos int auto_increment,
modify fechamodificacion timestamp NULL DEFAULT current_timestamp on update current_timestamp,
modify fechacreacion datetime NULL DEFAULT current_timestamp,
modify usuariomodificacion varchar(15) NULL;

create unique index indice_pasos on pasos (id_pasos);


alter table respuestas
add primary key (id_respuestas),
modify id_respuestas int auto_increment,
modify usuariomodificacion varchar(15) NULL,
modify fechamodificacion timestamp NULL DEFAULT current_timestamp on update current_timestamp,
modify fechacreacion datetime NULL DEFAULT current_timestamp;

create unique index indice_respuestas on respuestas (id_respuestas);

alter table partidas
add primary key (id_partidas),
modify usuariomodificacion varchar(15) NULL,
modify id_partidas_usuario int NOT NULL,
modify fechamodificacion timestamp NULL DEFAULT current_timestamp on update current_timestamp,
modify fechacreacion datetime NULL DEFAULT current_timestamp;

create unique index indice_partidas on partidas (id_partidas);

alter table protagonista_has_aventuras
add PRIMARY KEY (protagonista_id_protagonista, aventuras_id_aventuras),
modify fechamodificacion timestamp NULL DEFAULT current_timestamp on update current_timestamp,
modify fechacreacion datetime NULL DEFAULT current_timestamp;

create unique index indice_protagonista_has_aventuras on protagonista_has_aventuras (protagonista_id_protagonista);
create unique index indice2_protagonista_has_aventuras on protagonista_has_aventuras (aventuras_id_aventuras);

alter table protagonista_has_aventuras
 add constraint fk_protagonista_has_aventuras_protagonista1
    FOREIGN KEY (protagonista_id_protagonista)
    REFERENCES protagonista (id_protagonista),
 add constraint fk_protagonista_has_aventuras_aventuras1
    FOREIGN KEY (aventuras_id_aventuras)
    REFERENCES aventuras(id_aventuras);

alter table partidas
add constraint fk_partidas_usuario
	foreign key (id_partidas_usuario)
		references usuario(id_usuario);
        
alter table partidas
add constraint fk_partidas_protagonista
	foreign key (id_partidas_protagonista)
		references protagonista(id_protagonista);

alter table pasos
add constraint fk_pasos_aventuras
	foreign key (id_pasos_aventuras)
		references aventuras(id_aventuras);

alter table respuestas
add constraint fk_respuestas_pasos
	foreign key (id_respuestas_pasos)
		references pasos(id_pasos);
        
alter table partidas
add constraint fk_partidas_aventuras
	foreign key (id_partidas_aventuras)
		references aventuras(id_aventuras);
        
