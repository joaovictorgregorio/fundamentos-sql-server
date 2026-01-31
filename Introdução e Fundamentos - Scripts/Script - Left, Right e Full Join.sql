USE [Cursos];
GO

SELECT TOP 100
    [Curso].[Id],
    [Curso].[Nome],
    [Categoria].[Id] AS [Id Categoria],
    [Categoria].[Nome] AS [Nome Categoria]
FROM
    [Curso]
    RIGHT JOIN [Categoria]
    ON [Curso].[CategoriaId] = [Categoria].[Id];