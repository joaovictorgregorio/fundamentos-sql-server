USE [Cursos]
GO

SELECT TOP 100
    [Curso].[Id],
    [Curso].[Nome] AS [Nome Curso],
    [Categoria].[Id] AS [Categoria],
    [Categoria].[Nome] AS [Nome Categoria]
FROM
    [Curso]
    INNER JOIN [Categoria]
    ON [Curso].[CategoriaId] = [Categoria].[Id];