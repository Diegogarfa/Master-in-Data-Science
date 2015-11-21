
SELECT airline_code_2c, name, flight_freq

FROM ref_airline_nb_of_flights AS r

LEFT OUTER JOIN optd_airlines AS o

ON o."2char_code" = r.airline_code_2c

ORDER BY flight_freq DESC LIMIT 10;


SELECT airline_code_2c, name, flight_freq

FROM  optd_airlines AS o

LEFT OUTER JOIN ref_airline_nb_of_flights  AS r

ON o."2char_code" = r.airline_code_2c

ORDER BY flight_freq DESC LIMIT 10;


SELECT airline_code_2c, name, flight_freq

FROM  ref_airline_nb_of_flights  AS r

RIGHT OUTER JOIN optd_airlines AS o

ON o."2char_code" = r.airline_code_2c

ORDER BY flight_freq DESC LIMIT 10;

--Número de ciudad con altura por encima de la media mundial que al menos tenga 3 ciudades.

SELECT country_name, count(*)AS n
FROM optd_por_public
WHERE elevation > (
    SELECT avg(elevation) FROM optd_por_public
    WHERE elevation IS NOT NULL AND location_type='C'
)AND location_type='C'
GROUP BY country_name
HAVING COUNT(*) >=3;

-- Datos de la tienda de Informática

CREATE TABLE fabricantes(
codigo INT PRIMARY KEY,
nombre VARCHAR
);

CREATE TABLE articulos(
codigo INT PRIMARY KEY,
nombre VARCHAR,
precio INT,
fabricante INT REFERENCES fabricantes(codigo)
);

-- Nº Fabricantes que tengan artículos entre 60 y 200 Euros

SELECT DISTINT FATRICANTES 
FROM Articulos 
WHERE precio>=60 AND PRICE<=200;

-- Nombre de Fabricantes que tengan artículos entre 60 y 200 Euros

SELECT DISTINT f.nombre

FROM fabricantes

LEFT OUTER JOIN articulos 

ON fabricantes.codigo=articulos.fabricantes

WHERE precio BETWEEN 60 AND 200

-- 
SELECT f.nombre, COUNT(*)
FROM 
LEFT OUTER JOIN fabricantes 
WHERE precio BETWEEN 60 AND 200
GROUP BY f.nombre
HAVING COUNT(*)>3


