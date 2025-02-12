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
where fabricant not like "Boeing"
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
  and (fabricant = "Concorde" or companyia = "Alitalia");

-- Pregunta 6 DUDA AQUÍ!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! no encuentro nada de "Barcelona"
select concat (cognom,", ",nom)
from passatger
where nom like '%k%k%'
  or cognom like '%k%k%'
order by cognom;

-- Pregunta 7
select 'No ho sé';

-- Pregunta 8
select 'No ho sé';

-- Pregunta 9
select 'No ho sé';