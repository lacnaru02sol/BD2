DROP DATABASE IF EXISTS BDAuxiliar;
CREATE DATABASE BDAuxiliar;
\c BDAuxiliar;

CREATE TABLE  oferta (
    curso_academico VARCHAR(50),
    estudio VARCHAR(150),
    localidad VARCHAR(140),
    centro VARCHAR(140),
    tipo_centro VARCHAR(40),
    tipo_estudio VARCHAR(40), 
    plazas_ofertadas VARCHAR(40),
    plazas_matriculadas VARCHAR(40),
    plazas_solicitadas VARCHAR(40),
    ind VARCHAR(50),
    fecha VARCHAR(40)
);
COPY oferta FROM 'oferta2019.csv' USING DELIMITERS ';';
COPY oferta FROM 'oferta2020.csv' USING DELIMITERS ';';
COPY oferta FROM 'oferta2021.csv' USING DELIMITERS ';';

CREATE TABLE  resultados (
    curso_academico VARCHAR(50),
    centro VARCHAR(140),
    estudio VARCHAR(150),
    tipo_estudio VARCHAR(40),
    alumnos_matriculados VARCHAR(30), 
    alumnos_nuevo_ingreso VARCHAR(30),
    plazas_ofertadas VARCHAR(30),
    alumnos_graduados VARCHAR(30),
    s VARCHAR(30),
    a VARCHAR(30),
    b VARCHAR(30),
    c VARCHAR(30),
    v VARCHAR(30),
    e VARCHAR(30),
    creditos_matriculados VARCHAR(30),
    creditos_reconocidos VARCHAR(30),
    duracion_media VARCHAR(30),
    tasa_exito VARCHAR(30),
    tasa_rendimiento VARCHAR(30),
    tasa_eficiencia VARCHAR(30),
    tasa_abandono VARCHAR(30),
    tasa_graduacion VARCHAR(30),
    fecha_actualizacion VARCHAR(30)
);
COPY oferta FROM 'resultados2019.csv' USING DELIMITERS ';';
COPY oferta FROM 'resultados2020.csv' USING DELIMITERS ';';
COPY oferta FROM 'resultados2021.csv' USING DELIMITERS ';';