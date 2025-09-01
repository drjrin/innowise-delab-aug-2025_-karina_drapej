scores = [75, 88, -10, 95, 100, -25, 89]
total_score = 0                               #вводим начальные данные
for score in scores:                          #прописываем условия
    if score < 0:
        continue                              # пропускаем отрицательные баллы
    elif score == 0:
        print("Обработка прервана.")
        break                                 # прерываем цикл при нулевом балле
    else:
        total_score += score     # добавляем балл к сумме
        print(f"Добавлен балл: {score}")
print(f"\nИтоговая сумма баллов: {total_score}")  #выводим результат подсчетов