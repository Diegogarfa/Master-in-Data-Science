-- Script para pruebas

-- Borra la table

DROP TABLE IF EXISTS amigos;

-- Crea la tabla

CREATE TABLE amigos(
nombre VARCHAR,
edad INT,
email VARCHAR
);

-- Algunos valores de pruebas

INSERT INTO amigos
VALUES ('Juan Arevalo',
35, 
'juan@gmail.com'
);