DROP DATABASE IF EXISTS repositorio;
CREATE DATABASE repositorio CHARACTER SER utf8mb4;
USE repositorio;

CREATE TABLE grado (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE centro (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)  NOT NULL,
);

CREATE TABLE tiene (

    plazas INT UNSIGNED ,
    matriculados INT UNSIGNED,
    FOREIGN KEY (id_grado) REFERENCES grado(id),
    FOREIGN KEY (id_centro) REFERENCES centor(id),

);

create user director with encrypted password 'admin';
grant all privileges on database repositorio to director;