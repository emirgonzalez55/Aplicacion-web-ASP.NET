create database tp2;

use tp2

create table alumnos 
(
	idalumno int identity (1,1) not null,
	apellido  nvarchar (50) not null,
	nombre nvarchar (50) not null,
	dni  nvarchar (50) not null,
	email  nvarchar (50) not null,
	turno  nvarchar (50) not null,
	primary key (idalumno)
	
);

select * from alumnos

create table comentarios 
(
	idcomentarios int identity (1,1) not null,
	comentario  nvarchar (1500) not null,
	apellido  nvarchar (50) not null,
	dni  nvarchar (50) not null,
	primary key (idcomentarios)
	
);

select * from comentarios




