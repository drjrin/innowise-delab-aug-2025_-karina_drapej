print("Задание 6: Калькулятор")
number_1 = float(input("Введите первое число: "))
operator = input("Выберите доступную операцию (+, -, *, /): ")
number_2 = float(input("Введите второе число: "))
if operator == "+":
    result = number_1 + number_2
elif operator == "-":
    result = number_1 - number_2
elif operator == "*":
    result = number_1 * number_2
elif operator == "/":
    if number_2 == 0:
        print("Деление на ноль невозможно")
    else:
        result = number_1 / number_2
else:
    print("Недопустимая операция")
    result = None
if result is not None:
    print(f"Результат: {number_1} {operator} {number_2} = {result}")
