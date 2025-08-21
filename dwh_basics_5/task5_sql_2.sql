--Запрос на рейтинг студентов группы "П-11" по среднему баллу
SELECT *
    s.StudentFullName,
    ROUND(AVG(f.GradeValue) AS GPA,               --Вычисляем средний балл и округляем (гпа - средний балл) и суммируем credits за все предметы
    SUM(f.CreditsEarned) AS TotalCredits
FROM "Fact Grade" f
JOIN "Students" s ON f.StudentKey = s.StudentKey  --делаем джоин
WHERE s.GroupName = 'П-11'                        --выбираем нашу группу
GROUP BY s.StudentFullName
ORDER BY GPA DESC;                                --Сортируем по убыванию балла