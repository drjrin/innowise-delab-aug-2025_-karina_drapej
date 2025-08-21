--Запрос для выявления среднего балла по каждому предмету студентов группы "П-11" в осеннем семестре 2025 года:
SELECT
   c.CourseName
   ROUND(AVG(f.GradeValue),2) AS AverageGrade          --Вычисляем среднее арифметическое и округляем, затем считаем кол-во оценок в группе
   COUNT (f.GradeValue) AS GradesCount
FROM "Fact Grade" f                                    --Объединяем таблицы чтобы найти из них информацию
JOIN Students s ON f.StudentKey = s.StudentKey
JOIN Courses c ON f.CourseKey = c.Course_Key
JOIN Date d ON f.DateKey = d.DateKey
WHERE s.GroupName = 'П-11' AND d.Semester = 'Осенний'  --Отбираем только оценки студентов П-11 в осеннем семестре
GROUP BY c.CourseName                                  --Группируем оценки по предметам
ORDER BY AverageGrade DESC;                             --Сортируем по убыванию