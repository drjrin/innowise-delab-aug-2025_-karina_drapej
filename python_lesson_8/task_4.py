words = ["hello", "world", "python", "code"]           #список
length = [len(i) for i in words]                       #измеряем длины слов в списке
print(f"Длины слов: {length}")                         #выводим данные
longer_than_4 = [i for i in words if len(i) > 4]       #ищем слова длинее 4
print(f"Слова длиннее 4 символов:{longer_than_4}")     #выводим данные
dictionary = {i: len(i) for i in words}                #создаем словарь
print(f"Словарь:{dictionary}")                         #выводим словарь