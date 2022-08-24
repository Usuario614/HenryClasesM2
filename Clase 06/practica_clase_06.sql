USE henry;

-- 1era Manera de insertar
INSERT INTO carrera (nombre)
VALUES ('Data Science');

INSERT INTO instructor
VALUES (NULL, 'A2355', 'Alberto', 'Nada', '1985-05-05', '2022-01-01'),
	   (NULL, 'A2356', 'Ana', 'Rodriguez', '1980-04-05', '2021-01-01');


INSERT INTO cohorte
VALUES (NULL, 'DATA01', 2, 1, '2022-02-01', '2022-06-15'),
		(NULL, 'DATA02', 2, 2, '2022-06-01', '2022-12-15');

-- 2da Manera de insertar
INSERT INTO alumno
VALUES (NULL, 'A1584', 'Juan', 'Carabeta', '1998-04-25', curdate(), 1),
		(NULL, 'A1585', 'Rodrigo', 'Perez', '1995-03-10', curdate(), 1),
        (NULL, 'A1586', 'Jimena', 'Alvarez', '2002-07-21', curdate(), 1),
        (NULL, 'A1587', 'Alicia', 'Prieto', '2005-09-15', curdate(), 1);
        

UPDATE alumno
SET idCohorte = 2
WHERE idAlumno = 5;

SELECT idAlumno, idAlumno * 1.21 AS IdConIVA, nombre, apellido, idCohorte
FROM alumno;

SELECT nombre, apellido, cedulaIdentidad
FROM alumno
WHERE idCohorte != 1;

SELECT *
FROM alumno
WHERE fechaNacimiento > '1996-01-01';

SELECT *
FROM cohorte
WHERE fechaInicio BETWEEN '2022-02-01' AND '2022-03-01';

SELECT *
from alumno
WHERE nombre = 'Juan' and idCohorte = 1;

SELECT *
from alumno
WHERE nombre = 'Juan' OR nombre='Rodrigo';

SELECT *
from alumno
WHERE nombre IN ('Juan','Rodrigo');

SELECT *
FROM instructor
WHERE apellido LIKE '%a%';

SELECT a.nombre, a.apellido, a.cedulaIdentidad, c.fechaInicio, c.fechaFinalizacion
FROM alumno a
JOIN cohorte c ON (a.idCohorte = c.idCohorte)
WHERE c.fechaInicio < '2022-05-01';



