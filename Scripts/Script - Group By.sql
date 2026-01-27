USE [Cursos];
GO


SELECT TOP 100
    [Categoria].[Nome],
    COUNT([Curso].[CategoriaId]) AS Cursos
FROM
    [Categoria]
    LEFT JOIN [Curso]
    ON [Curso].[CategoriaId] = [Categoria].[Id]
GROUP BY
    [Categoria].[Nome],
    [Curso].[CategoriaId];


SELECT TOP 100
    *
FROM [Categoria];

SELECT TOP 100
    *
FROM [Curso];

UPDATE [Categoria] SET [Nome] = 'Frontend' WHERE [Id] = 2002

INSERT INTO [Categoria]
VALUES('Fronted');