email = " USER@DOMAIN.COM "
cleaned_email = email.strip()                 #очистили от лишних пробелов
normalized_email = cleaned_email.lower()      #сделали нижний регистр
user = normalized_email[:4]                   #взяли первые 4 символа как юзернэйм
domain = normalized_email[-10:]               #взяли последние 10 как домен
print(f"Username:{user}, Domain:{domain}")    #вывели инфу