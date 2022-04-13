DROP DATABASE IF EXISTS repositorio;
CREATE DATABASE repositorio;
\c repositorio;
CREATE TABLE grado (
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL
);
CREATE TABLE centro (
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(50)  NOT NULL
);
CREATE TABLE tiene (
	plazas INT,
	matriculados INT,
	id_grado INT,
	id_centro INT,
	FOREIGN KEY (id_grado) REFERENCES grado(id),
	FOREIGN KEY (id_centro) REFERENCES centro(id)
);
create user director with encrypted password 'admin';   				 
grant all privileges on database repositorio to director;
