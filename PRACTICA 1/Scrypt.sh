#!/bin/bash

OFERTA_2019=https://zaguan.unizar.es/record/87665/files/CSV.csv
OFERTA_2020=https://zaguan.unizar.es/record/96835/files/CSV.csv
OFERTA_2021=https://zaguan.unizar.es/record/108270/files/CSV.csv
RESULTADOS_2019=https://zaguan.unizar.es/record/76879/files/CSV.csv
RESULTADOS_2020=https://zaguan.unizar.es/record/95644/files/CSV.csv
RESULTADOS_2021=https://zaguan.unizar.es/record/107369/files/CSV.csv
NOTAS_DEF_2019=https://zaguan.unizar.es/record/76876/files/CSV.csv
NOTAS_DEF_2020=https://zaguan.unizar.es/record/87663/files/CSV.csv
NOTAS_DEF_2021=https://zaguan.unizar.es/record/98173/files/CSV.csv
ACUERDO_ERASMUS_2019=https://zaguan.unizar.es/record/83980/files/CSV.csv
ACUERDO_ERASMUS_2020=https://zaguan.unizar.es/record/95648/files/CSV.csv
ACUERDO_ERASMUS_2021=https://zaguan.unizar.es/record/107373/files/CSV.csv
ABANDONOS_VOLUNTARIOS_2019=https://zaguan.unizar.es/record/83979/files/CSV.csv
ABANDONOS_VOLUNTARIOS_2020=https://zaguan.unizar.es/record/95646/files/CSV.csv
ABANDONOS_VOLUNTARIOS_2021=https://zaguan.unizar.es/record/107371/files/CSV.csv

wget $OFERTA_2019 -O oferta2019.csv
wget $OFERTA_2020 -O oferta2020.csv
wget $OFERTA_2021 -O oferta2021.csv
wget $RESULTADOS_2019 -O resultados2019.csv
wget $RESULTADOS_2020 -O resultados2020.csv
wget $RESULTADOS_2021 -O resultados2021.csv
wget $NOTAS_DEF_2019 -O    nota_corte2019.csv
wget $NOTAS_DEF_2020 -O nota_corte2020.csv
wget $NOTAS_DEF_2021 -O nota_corte2021.csv
wget $ACUERDO_ERASMUS_2019 -O acuerdo_erasmus2019.csv
wget $ACUERDO_ERASMUS_2020 -O acuerdo_erasmus2020.csv
wget $ACUERDO_ERASMUS_2021 -O acuerdo_erasmus2021.csv
wget $ABANDONOS_VOLUNTARIOS_2019 -O abandonos2019.csv
wget $ABANDONOS_VOLUNTARIOS_2020 -O abandonos2020.csv
wget $ABANDONOS_VOLUNTARIOS_2021 -O abandonos2021.csv


wget OFERTA_2019 -O oferta2019.csv

sudo -iu postgres psql < crear_bd_user.sql
clear