DROP DATABASE IF EXISTS bdauxiliar;
CREATE DATABASE bdauxiliar;
\c bdauxiliar;

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
COPY oferta FROM '/home/alumno/oferta2019.csv' USING DELIMITERS ';';
COPY oferta FROM '/home/alumno/oferta2020.csv' USING DELIMITERS ';';
COPY oferta FROM '/home/alumno/oferta2021.csv' USING DELIMITERS ';';

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
COPY resultados FROM '/home/alumno/resultados2019.csv' USING DELIMITERS ';';
COPY resultados FROM '/home/alumno/resultados2020.csv' USING DELIMITERS ';';
COPY resultados FROM '/home/alumno/resultados2021.csv' USING DELIMITERS ';';

CREATE TABLE  notaCorte (
    curso_academico VARCHAR(50),
    estudio VARCHAR(150),
    localidad VARCHAR(140),
    centro VARCHAR(140),
    a VARCHAR(100),
    nota_corte_julio VARCHAR(50),
    nota_corte_sept VARCHAR(50),
    fecha VARCHAR(59)
);
COPY notaCorte FROM '/home/alumno/nota_corte2019.csv' USING DELIMITERS ';';
COPY notaCorte FROM '/home/alumno/nota_corte2020.csv' USING DELIMITERS ';';
COPY notaCorte FROM '/home/alumno/nota_corte2021.csv' USING DELIMITERS ';';

CREATE TABLE acuerdosErasmus (
        CURSO_ACADEMICO	VARCHAR(150),
        NOMBRE_PROGRAMA_MOVILIDAD VARCHAR(150),
        NOMBRE_AREA_ESTUDIOS_MOV VARCHAR(150),
        CENTRO	VARCHAR(150),
        IN_OUT	VARCHAR(150),
        NOMBRE_IDIOMA_NIVEL_MOVILIDAD VARCHAR(150),	
        PAIS_UNIVERSIDAD_ACUERDO VARCHAR(150),	
        UNIVERSIDAD_ACUERDO VARCHAR(150),	
        PLAZAS_OFERTADAS_ALUMNOS VARCHAR(150),	
        PLAZAS_ASIGNADAS_ALUMNOS_OUT VARCHAR(150),	
        FECHA_ACTUALIZACION VARCHAR(150)
);
COPY acuerdosErasmus FROM '/home/alumno/acuerdo_erasmus2019.csv' USING DELIMITERS ';';
COPY acuerdosErasmus FROM '/home/alumno/acuerdo_erasmus2020.csv' USING DELIMITERS ';';
COPY acuerdosErasmus FROM '/home/alumno/acuerdo_erasmus2021.csv' USING DELIMITERS ';';

CREATE TABLE  abandonos (
    curso_academico VARCHAR(50),
    localidad VARCHAR(140),
    estudio VARCHAR(150),
    tipo_estudio VARCHAR(140),
    tipo_egreso VARCHAR(100),
    sexo VARCHAR(50),
    alumnos_graduados VARCHAR(50),
    alumnos_interrumpen_estudios VARCHAR(50),
    aiea VARCHAR(59),
    alumnos_traslado VARCHAR(59),
    duracion_media VARCHAR(59),
    tasa_eficiencia VARCHAR(59),
    fecha_actualizacion VARCHAR(59)
);
COPY abandonos FROM '/home/alumno/abandonos2019.csv' USING DELIMITERS ';';
COPY abandonos FROM '/home/alumno/abandonos2020.csv' USING DELIMITERS ';';
COPY abandonos FROM '/home/alumno/abandonos2021.csv' USING DELIMITERS ';';