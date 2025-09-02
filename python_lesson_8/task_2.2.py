prices = [1000, 3499, 250]
def add_vat(price):                                  #создаем функцию для рассчета
    nds = 0.20
    total = price + price * nds                      #расчет цены с НДС
    return total                                     #вывод результата

for price in prices:                                 #применяем ко всем ценам
    total_price = add_vat(price)
    print(total_price)