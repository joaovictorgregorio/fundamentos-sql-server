USE [Curso];

CREATE INDEX [IX_Aluno_Email] ON [Aluno](Email);
GO


DROP INDEX [IX_Aluno_Email] ON [Aluno];
GO