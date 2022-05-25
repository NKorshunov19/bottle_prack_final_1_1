from bottle import post, request,redirect
import re
#Проверка данных

def mail(email:str):
    regex = re.compile(r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Z|a-z]{2,})+')
    if re.fullmatch(regex, email):
        return True
    else:
        return False

#Принятие данных и запись в файл      
@post('/forms', method="post")
def my_form():
     data = request.forms.get("NAME")
     data11 = request.forms.get("EMAIL")
     data12 = request.forms.get("MESSAGE")
     if not mail(data11):
         return "Data is not correct"
     if(len(data)) <= 3:
         return "The name must contain more tha 3 characters" 
     if(data12) == "":
         return "The message should not be empty"
     file = open("newData.txt", "a")
     file.write("Name:" + data + "\n") #Имя
     file.write("Email:" + data11 + "\n") #Электронная почта
     file.write("Message:" + data12 + "\n") #Сообщение
     file.write("-------------------------------------" + "\n")
     file.close()
     return "Data is correct!"
     
     
     
     
     
     
     



