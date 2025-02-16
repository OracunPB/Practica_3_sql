/* *****************************************************
  INSTITUT TIC de Barcelona
    CFGS: Desenvolupament d'aplicacions webs (DAW) 1A
    Mòdul: 0484 Bases de dades. 
    AUTORS: Ricardo Martín Díaz, Pau Bosch Pérez
    DATA: 12/02/2025
****************************************************** */

-- Pregunta 1
select nom, icao
from companyia
where pais = 'Spain'
order by icao;

-- Pregunta 2
select num_serie, fabricant, any_fabricacio as "any", companyia
from avio
where fabricant not like "Boeing%"
  and any_fabricacio >= 2020
order by any_fabricacio, fabricant, num_serie;

-- Pregunta 3
select concat ("L'aeroport ",nom," està a ",ciutat," i va ser construït l'any ", any_construccio) as "aeroport"
from aeroport
where pais = 'Spain'
order by nom;

-- Pregunta 4
select nom, pais, char_length(nom) as "longitud"
from aeroport
where char_length(nom)
between 7 and 9
  and nom like '%e%e%e%'
order by longitud desc, pais;

-- Pregunta 5
select num_serie
from avio
where any_fabricacio = 2008
  and (fabricant = 'Concorde' or companyia = 'Alitalia')
order by num_serie;

-- Pregunta 6
select concat (cognom,", ",nom) as nom_complet
from passatger
where (nom like '%k%k%' or cognom like '%k%k%')
  and adreca like '%Barcelona%'
order by cognom;

-- Pregunta 7
select DISTINCT fabricant
from avio
where any_fabricacio = 2000
order by fabricant;

-- Pregunta 8
select cognom, nom, date_format(data_naix, '%d/%m/%Y (%W)') as naixement
from passatger
where nom not like "%a%"
  and YEAR(data_naix) = 2003
  and MONTH(data_naix) = 10
order by data_naix desc, cognom;

-- Pregunta 9
select nom, cognom, telefon, data_naix
from passatger
WHERE TIMESTAMPDIFF(YEAR, data_naix, CURDATE()) BETWEEN 54 AND 55
  and data_naix is not null
  and (telefon like "________1"
    or telefon like "________3"
    or telefon like "________5"
    or telefon like "________7"
    or telefon like "________9")
  and adreca is null
order by data_naix, nom;