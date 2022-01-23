import pymysql

conn = pymysql.connect(host='13.94.208.220', user='mehdi', password='hdfiugioerh7ds8gdigewuisfy7sdnbjf', db='proyecto')

cur = conn.cursor()



def getUsers():

    query = 'select * from usuario'

    cur.execute(query)
    # fetchall (toda la tabla)
    # rows=cur.fetchall()fetchone
    # print(rows)

    # fetchone (primero)
    row1 = cur.fetchall()

    diccio = {}

    for i in row1:
        diccio[i[1]] = {'contrasenya': i[2], 'id': i[0]}
    return diccio

def userExists(usuario,password):
    for i in getUsers():
        if i == usuario:
            if getUsers()[i]["contrasenya"] == password:
                return 1
            else:
                return 0

    # print()
    # cur.execute("select Username from usuarioaaa")
    # nombres = cur.fetchall()
    # print(nombres)
    # '''
    #    for i in getUsers():
    #     if usu == i:
    #
    #         if pas == i[usu]:
    #             return True
    #         else:
    #             return False
    #     else:
    #         return False
    #
    # '''
    # for item in nombres:
    #     if item == usuario:
    #         return True

def checkUser():
    while True:
        usu = input("Escribe tu nombre de usuario: ")
        #cur.execute("select Username from usuarioaaa")
        #nombres = cur.fetchall()
        long = len(usu)  # Para calcular la longitud del nomre de usuario
        y = usu.isalnum()  # Calcula que la cadena contenga valores alfanuméricos

        if y == False:  # La cadena contiene valores no alfanuméricos
            print("El nombre de usuario puede contener solo letras y números")

        if long < 6:
            print("El nombre de usuario debe contener al menos 6 caracteres")

        if long > 12:
            print("El nombre de usuario no puede contener más de 12 caracteres")

        if long > 5 and long < 13 and y == True:
            print("Usuario correcto")
            return usu

def checkPassword():
    while True:
        password = input("Dime la contraseña: ")

        validar = False  # que se vayan cumpliendo los requisitos uno a uno.
        long = len(password)  # Calcula la longitud de la contraseña
        espacio = False  # variable para identificar espacios
        mayuscula = False  # variable para identificar letras mayúsculas
        minuscula = False  # variable para contar identificar letras minúsculas
        numeros = False  # variable para identificar números
        y = password.isalnum()  # si es alfanumérica retona True
        correcto = True  # verifica que hayan mayuscula, minuscula, numeros y no alfanuméricos

        for carac in password:  # ciclo for que recorre caracter por caracter en la contraseña

            if carac.isspace() == True:  # Saber si el caracter es un espacio
                espacio = True  # si encuentra un espacio se cambia el valor user

            if carac.isupper() == True:  # saber si hay mayuscula
                mayuscula = True  # acumulador o contador de mayusculas

            if carac.islower() == True:  # saber si hay minúsculas
                minuscula = True  # acumulador o contador de minúsculas

            if carac.isdigit() == True:  # saber si hay números
                numeros = True  # acumulador o contador de numeros

        if espacio == True:  # hay espacios en blanco
            print("La contraseña no puede contener espacios")
        else:
            validar = True  # se cumple el primer requisito que no hayan espacios

        if long < 8 and validar == True:
            print("Mínimo 8 caracteres")
            validar = False  # cambia a Flase si no se cumple el requisito móinimo de caracteres

        if mayuscula == True and minuscula == True and numeros == True and y == False and validar == True:
            validar = True  # Cumple el requisito de tener mayuscula, minuscula, numeros y no alfanuméricos
        else:
            correcto = False  # uno o mas requisitos de mayuscula, minuscula, numeros y no alfanuméricos no se cumple

        if validar == True and correcto == False:
            print(
                "La contraseña elegida no es segura: debe contener letras minúsculas, mayúsculas, números y al menos 1 carácter no alfanumérico")

        if validar == True and correcto == True:
            print("Contraseña correcta")
            return password

def insertUser(usuario,contraseña):

    username = usuario
    pasword=contraseña


    query=f"insert into usuario (username,pasword) values ('{username}','{pasword}')"
    #query = f"insert into usuario values (id_usuario,'{username}','{pasword}',null,null,null,null)"
    cur.execute(query)
    conn.commit()
    conn.close()

def getHeader(text):

    coy = print('*'*105,'\n','{:=^105}'.format(text),'\n','*'*105,sep='')
    return coy


def getFormatedTable(queryTable,title=""):
    print()

def desarollo ():
    print("$$$$$$$$\                       $$\                                                             $$\ $$\           ")
    print("$$  _____|                      $$ |                                                            $$ |$$ |          ")
    print("$$ |      $$$$$$$\         $$$$$$$ | $$$$$$\   $$$$$$$\  $$$$$$\   $$$$$$\   $$$$$$\   $$$$$$\  $$ |$$ | $$$$$$\  ")
    print("$$$$$\    $$  __$$\       $$  __$$ |$$  __$$\ $$  _____| \____$$\ $$  __$$\ $$  __$$\ $$  __$$\ $$ |$$ |$$  __$$\ ")
    print("$$  __|   $$ |  $$ |      $$ /  $$ |$$$$$$$$ |\$$$$$$\   $$$$$$$ |$$ |  \__|$$ |  \__|$$ /  $$ |$$ |$$ |$$ /  $$ |")
    print("$$ |      $$ |  $$ |      $$ |  $$ |$$   ____| \____$$\ $$  __$$ |$$ |      $$ |      $$ |  $$ |$$ |$$ |$$ |  $$ |")
    print("$$$$$$$$\ $$ |  $$ |      \$$$$$$$ |\$$$$$$$\ $$$$$$$  |\$$$$$$$ |$$ |      $$ |      \$$$$$$  |$$ |$$ |\$$$$$$  |")
    print("\________|\__|  \__|       \_______| \_______|\_______/  \_______|\__|      \__|       \______/ \__|\__| \______/ ")
    print("")