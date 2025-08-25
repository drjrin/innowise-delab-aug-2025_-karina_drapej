--Выбираем студентов со средним баллом от 9.0 до 9.9 (полезно для начисления стипендии)
SELECT
    s.StudentFullName,
    s.GroupName,
    ROUND(AVG(f.GradeValue),2) AS GPA,               -- считаем и округляем средний балл
    COUNT(f.GradeValue) AS GradesAmount           -- считаем количество оценок
FROM "Fact Grade" f
JOIN "Students" s ON f.StudentKey = s.StudentKey  -- присоединяем другую таблицу
GROUP BY s.StudentFullName, s.GroupName           -- группируем по именам и группам
HAVING AVG(f.GradeValue) BETWEEN 9.0 AND 9.9      -- фильтруем по нужному среднему баллу
ORDER BY GPA DESC;                        -- сортируем по убыванию