USE [course_balta];
GO

DECLARE @StudentId UNIQUEIDENTIFIER = '3798a3cc-d363-40ac-a2d0-60904482a65a'

SELECT
    [Student].[Name] AS Student,
    [Course].[Title] AS Course,
    [StudentCourse].[Progress],
    [StudentCourse].[LastUpdateDate]
FROM
    [StudentCourse]
    INNER JOIN [Student] ON [StudentCourse].[StudentId] = [Student].[Id]
    INNER JOIN [Course] ON [StudentCourse].[CourseId] = [Course].[Id]
WHERE
    [StudentCourse].[StudentId] = @StudentId
    AND [StudentCourse].[Progress] < 100
    AND [StudentCourse].[Progress] > 0
ORDER BY
    [StudentCourse].[LastUpdateDate] DESC;
 