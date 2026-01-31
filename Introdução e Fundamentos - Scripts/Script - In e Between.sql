USE [Cursos]
GO

SELECT TOP 100
    *
FROM
    [Curso]
WHERE
    [ID] BETWEEN 1 AND 3;


SELECT TOP 100
    *
FROM
    [Categoria]
WHERE
    [Nome] IN('Backend', 'Aws');