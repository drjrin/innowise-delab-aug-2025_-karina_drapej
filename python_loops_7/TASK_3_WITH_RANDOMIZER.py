import random
secret_number = random.randint(1, 10)  #добавили рандомайзер
counter = 0
user_number = 0
while user_number != secret_number:
    user_number = int(input("Угадайте число от 1 до 10: "))
    counter += 1
    if user_number != secret_number:
        print("Неверно, попробуйте еще раз.")
print(f"Поздравляю! Вы угадали число с {counter} попытки!")