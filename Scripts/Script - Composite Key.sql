USE [Curso];

-- DROP TABLE [Aluno];
CREATE TABLE [Aluno]
(
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [Email] NVARCHAR(180) NOT NULL,
    [Nascimento] DATETIME NULL,
    [Active] BIT NOT NULL DEFAULT(0),

    CONSTRAINT [PK_Aluno] PRIMARY KEY([Id]),
);
GO


CREATE TABLE [Curso]
(
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,

    CONSTRAINT [PK_Curso] PRIMARY KEY([Id]),
);
GO

ALTER TABLE [Curso]
    ADD [CategoriaId] INT NOT NULL;
GO

ALTER TABLE [Curso]
    ADD CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY([CategoriaId]) REFERENCES [Categoria]([Id]);
GO


CREATE TABLE [ProgressoCurso]
(
    [AlunoId] INT NOT NULL,
    [CursoId] INT NOT NULL,
    [Progresso] INT NOT NULL,
    [UltimaAtualizacao] DATETIME NOT NULL DEFAULT(GETDATE())
);
GO

ALTER TABLE [ProgressoCurso]
    ADD CONSTRAINT [PK_Progresso] PRIMARY KEY([AlunoId], [CursoId]);
GO


CREATE TABLE [Categoria]
(
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,

    CONSTRAINT [PK_Categoria] PRIMARY KEY([Id]),
);
GO