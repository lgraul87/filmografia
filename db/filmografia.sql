CREATE DATABASE cine;

GRANT ALL ON cine.* TO springappuser@'%' IDENTIFIED BY 'pspringappuser';
GRANT ALL ON cine.* TO springappuser@localhost IDENTIFIED BY 'pspringappuser';

USE cine;

CREATE TABLE pelicula (
  id INTEGER PRIMARY KEY,
  director varchar(30),
    titulo varchar(30),
    fecha datetime
);

CREATE TABLE usuario (
  id INTEGER PRIMARY KEY,
    usuario varchar(30),
    contrasenia varchar(30)
);
