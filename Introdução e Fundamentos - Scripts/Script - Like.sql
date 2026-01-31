USE [Cursos]
GO

SELECT TOP 100
    *
FROM
    [Curso]
WHERE
    [Nome] LIKE '%fundamentos%'