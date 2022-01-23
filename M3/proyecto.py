import heramientas.funciones as funciones

menu00 = "="*10 + "Aventura de historias" + "="*10 + "\n\n1)Login\n2)Create User\n3)Replay user\n4)Reports\n5)Exit\n"




menu021 = "="*10 + "Aventura de historias" + "="*10 + "\n\n1)Logout\n2)Play\n3)Replay user\n4)Reports\n5)Exit\n"


menu03 = "="*10 + "Reports" + "="*10 + "\n1)Most used answer\n2)Player with mor games played\n3)Games played by user\n4)Back"



flag0 = True
flag00 = True
flag01 = False
flag02 = False
flag021 = False
flag022 = False
flag03 = False
flag031 = False
flag032 = False
flag033 = False
flag034 = False
flag0400 = False
play = False

print("  ______   _     _____    _                        _                              ")
print(" |  ____| | |   |  __ \  (_)                      | |                             ")
print(" | |__    | |   | |  | |  _   _ __    ___    ___  | |_    ___    _ __             ")
print(" |  __|   | |   | |  | | | | | '__|  / _ \  / __| | __|  / _ \  | '__|            ")
print(" | |____  | |   | |__| | | | | |    |  __/ | (__  | |_  | (_) | | |     _   _   _ ")
print(" |______| |_|   |_____/  |_| |_|     \___|  \___|  \__|  \___/  |_|    (_) (_) (_)")
print("")
while flag0:
#Entra al menu00
    while flag00:
        while True:
            print(menu00)
            opcion = input("->Opcion: ")
            if opcion.isdigit() == False:
                print("Introduce un digito valido")
            elif opcion == "1" or opcion == "2" or opcion == "3" or opcion == "4" or opcion == "5":
                break
            else:
                print("Introduce un digito valido")
        if opcion == "1":
            flag01 = True
            flag00 = False

        elif opcion == "2":
            flag02 = True
            flag00 = False
        elif opcion == "3":
            flag0400 = True
            flag00 = False
        elif opcion == "4":
            flag03 = True
            flag00 = False
        elif opcion == "5":
            print("Cerrando Aplicación...")
            flag0 = False
            break

        #################################################################

#Entra al menu01


    while flag01:
        usuario=input("Username: ")
        password = input("Password: ")
        resultado=funciones.userExists(usuario,password)
        if resultado == 1:
            print("Usuario y contraceña correctos")
            flag01=False
            flag021 = True
        else:
            print("El usuario o contraceña no son correctas\n Vuelvelo a intentar")
            flag01 = False
            flag00 = True

#Entra al menu02
    while flag02:
        usuario=funciones.checkUser()
        contraseña=funciones.checkPassword()
        funciones.insertUser(usuario,contraseña)
        flag02 = False
        flag021 = True
##############################

#Entra al menu 021
    while flag021:
        while True:
            print(menu021)
            opcion = input("->Opcion: ")
            if opcion.isdigit() == False:
                print("Introduce un digito valido")
            elif opcion == "1" or opcion == "2" or opcion == "3" or opcion == "4" or opcion == "5":
                break
            else:
                print("Introduce un digito valido")
        if opcion == "1":
            flag021 = False
            flag00 = True
        elif opcion == "2":
            flag021 = False
            play = True
        elif opcion == "3":
            flag021 = False
            flag0400 = True
        elif opcion == "4":
            flag021 = False
            flag03 = True
        elif opcion == "5":
            print("Cerrando Aplicación...")
            flag0 = False
            break





################################




#Entra al menu 03
    while flag03:
        while True:
            print(menu03)
            opcion = input("->Opcion: ")
            if opcion.isdigit() == False:
                print("Introduce un digito valido")
            elif opcion == "1" or opcion == "2" or opcion == "3" or opcion == "4":
                break
            else:
                print("Introduce un digito valido")
        if opcion == "1":
            flag03 = False
            flag031 = True
        elif opcion == "2":
            flag03 = False
            flag032 = True
        elif opcion == "3":
            flag03 = False
            flag033 = True
        elif opcion == "4":
            flag03 = False
            flag00 = True



# Entra al menu 031
    while flag031:
        funciones.desarollo()
        input("Enter para volver al menu")
        flag031 = False
        flag03 = True


    # Entra al menu 032
    while flag032:
        funciones.desarollo()
        input("Enter para volver al menu")
        flag032 = False
        flag03 = True
# Entra al menu 033
    while flag033:
        funciones.desarollo()
        input("Enter para volver al menu")
        flag033 = False
        flag03 = True




    while flag0400:
        funciones.desarollo()
        input("Enter para volver al menu")
        flag0400 = False
        flag00 = True

    while play:
        funciones.desarollo()
        input("Enter para volver al menu")
        play = False
        flag021 = True
