--Делаем рейтинг конкретно по предмету Литургическое Богословие
SELECT
    s.StudentFullName,
    f.GradeValue AS Grade,                         -- переименовываем столбцы в новой таблице
    c.CourseName AS Course                     
FROM "Fact Grade" f
JOIN "Students" s ON f.StudentKey = s.StudentKey
JOIN "Courses" c ON f.CourseKey = c.Course_Key     -- присоединяем таблицу курсов
WHERE c.CourseName = 'Литургическое богословие'    -- фильтр по названию предмета
ORDER BY f.GradeValue DESC, s.StudentFullName;     -- сортируем по оценке и фамилии