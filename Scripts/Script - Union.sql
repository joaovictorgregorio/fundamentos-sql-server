USE [Cursos];
GO

    SELECT TOP 100
        [Id],
        [Nome]
    FROM
        [Curso]

UNION ALL

    SELECT TOP 100
        [Id],
        [Nome]
    FROM
        [Categoria]