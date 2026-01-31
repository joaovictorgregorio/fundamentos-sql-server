USE [Cursos];
GO


CREATE OR ALTER PROCEDURE [spListaCursosCemPrimeiros]
AS
SELECT TOP 100
    *
FROM [Curso];


EXEC [spListaCursosCemPrimeiros];

DROP PROCEDURE [spListaCursosCemPrimeiros];