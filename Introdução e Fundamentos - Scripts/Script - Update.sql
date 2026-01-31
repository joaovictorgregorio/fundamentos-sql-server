USE [Cursos];
GO

BEGIN TRANSACTION
UPDATE
        [Categoria]
    SET
        [Nome] = 'Database'
    WHERE
        [Id] = 4
COMMIT


SELECT
    *
FROM
    [Categoria];