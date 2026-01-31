USE [Cursos];
GO

SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    dbo.[Curso]
WHERE
    [Id] = 1 AND
    [CategoriaId] IS NOT NULL;