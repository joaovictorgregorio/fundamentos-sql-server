USE [Cursos];
GO

BEGIN TRANSACTION
DELETE FROM 
        [Categoria]
    WHERE
        [Id] = 1003
ROLLBACK


SELECT
    *
FROM
    [Categoria];

INSERT INTO [Categoria]
    ([Nome])
VALUES('Aws')