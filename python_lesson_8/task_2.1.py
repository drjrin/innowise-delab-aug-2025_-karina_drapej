import datetime                                        #импорт модуля
def show_current_time():                               #создаем функцию
    current_time = datetime.datetime.now()
    print(f"Текущие дата и время: {current_time}")
show_current_time()                                    #вызываем функцию
