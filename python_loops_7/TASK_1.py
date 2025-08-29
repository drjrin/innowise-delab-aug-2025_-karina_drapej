shopping_list = ["milk", "bread", "eggs", "butter", "apples"]
print("Список покупок:")
number = 1                                                    #ввод начальных данных
for product in shopping_list:                                 #выводим номер с продуктом
    print(f"{number}. {product}")
    number += 1