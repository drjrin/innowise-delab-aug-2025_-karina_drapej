print ('Задание 4: Угадай число')
import random
game_key = random.randint(1, 5)
user_number = int(input("Угадай число от 1 до 5: "))
if user_number == game_key: print("Ты угадал!")
elif user_number > game_key: print("Слишком много!")
else: print("Слишком мало!")
