USE [Cursos];
GO

SELECT TOP 100
    MIN([Id]) AS Menor_Id,
    COUNT([Nome]) AS Quantidade_Cursos,
    AVG([Id]) AS Media_Id,
    MAX([Id]) AS Maior_Id,
    SUM([Id]) AS Soma_Id
FROM
    [Categoria];
