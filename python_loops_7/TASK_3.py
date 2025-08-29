secret_number = 7
counter = 0
user_number = 0                                              #ввели начальные данные
while user_number != secret_number:                          #задаем условия для цикла - пока не =, цикл продолжаем
    user_number = int(input("Угадайте число от 1 до 10:"))
    counter += 1                                    #запускаем счетчик попыток
    if user_number != secret_number:
        print("Неверно, попробуйте еще раз.")

print(f"Поздравляю! Вы угадали число с {counter} попытки!")  #выводим поздравление и количество попыток в случае успеха