USE [course_balta]
GO

CREATE OR ALTER VIEW vwCourses
AS
    SELECT TOP 100
        [Course].[Tag],
        [Course].[Title],
        [Course].[Url],
        [Course].[Summary],
        [Category].[Title] AS Category,
        [Author].[Name] AS Author
    FROM
        [Course]
        INNER JOIN [Category] ON [Course].[CategoryId] = [Category].[Id]
        INNER JOIN [Author] ON [Course].[AuthorId] = [Author].[Id]
    WHERE
        [Active] = 1
    ORDER BY 
        [CreateDate] DESC;


SELECT *
FROM [vwCourses];

