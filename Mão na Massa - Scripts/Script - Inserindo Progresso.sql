USE [course_balta];
GO

SELECT *
FROM [Course];

SELECT *
FROM [Student];
INSERT INTO [Student]
    ([Id], [Name], [Email], [Document], [Phone], [Birthdate], [CreateDate])
VALUES
    (
        '3798a3cc-d363-40ac-a2d0-60904482a65a',
        'Joao Silva',
        'joao.silva@gmail.com',
        12345678902,
        '993431243',
        NULL,
        GETDATE()
)
GO

SELECT *
FROM [StudentCourse];
INSERT INTO [StudentCourse]
    ([CourseId], [StudentId], [Progress], [Favorite], [StartDate], [LastUpdateDate])
VALUES
    (
        '5bae4a4b-fb6f-c01d-131c-428c00000000',
        '3798a3cc-d363-40ac-a2d0-60904482a65a',
        65,
        0,
        '2026-01-19 13:39:12',
        GETDATE()
)


SELECT *
FROM [StudentCourse];
INSERT INTO [StudentCourse]
    ([CourseId], [StudentId], [Progress], [Favorite], [StartDate], [LastUpdateDate])
VALUES
    (
        '5d1b6506-c980-8031-5957-26df00000000',
        '3798a3cc-d363-40ac-a2d0-60904482a65a',
        0,
        1,
        '2026-01-03 11:12:54',
        GETDATE()
)