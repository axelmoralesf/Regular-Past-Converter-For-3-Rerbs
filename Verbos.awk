#Comienzo del programa
BEGIN{
    verbo = "0"
    print "===============	Regular Past Convert for 3 verbs ==============="
    print "Instrucciones:"
    print "1. Presione 1 para conjugar verbo"
    print "     1.1.Ingresar el verbo que desea conjugar"
    print "     1.2.Oprima <enter> para conjugarlo"
    print "     1.3.Vea su verbo conjugado si cumple las condiciones necesarias"
    print "     1.4.Oprima <enter> para conjugar un nuevo verbo"
    print "2. Presione 2 para cerrar"
    print "=================================================================="
    print "Ingrese opcion: "
    getline opcion
    Start(opcion)
}

#Funcion de selecion de opcion

function Start(opcion){
    if(opcion == 1){
        print "Ingresa el verbo que deseas conjugar a pasado"
        getline verbo
        Verbo(verbo)
    }
    else if(opcion == 2){
        system(echo "cls")
        print "Cerraste el programa"
        system(echo "exit")
    }
    else{
        print "No es una opcion valida"
        print "Ingrese una opcion valida"
        system(echo "pause")
        system(echo "Ejecutable.BAT")
    }
}

#Funcion de identificar tipo
function Verbo(verbo){
    Type_e(verbo)
    Type_y(verbo)
    Type_D(verbo)
}

#Funcion para identificar tipo_e
function Type_e(verbo){
    Base_1(verbo)
}

#Funcion para identificar base_1
function Base_1(verbo){
    base = substr(verbo, 1, 4)
    if (base == "danc"){
        final_e(verbo)
    }
}

#Funcion para identificar si termina con e
function final_e(verbo){
    e = substr(verbo, length(verbo), 1)
    if(e == "e"){
        print "Su conjugacion es danced"
        system(echo "pause")
        system(echo "ejecutable.BAT")
    }
    else{
        Error(verbo)
    }
}

#Funcion para identificar tipo_y
function Type_y(verbo){
    Base_2(verbo)
}

#Funcion para identificar base_2
function Base_2(verbo){
    base = substr(verbo, 1, 2)
    if (base == "cr"){
        final_y(verbo)
    }
}

#Funcion para identificar si termina con y
function final_y(verbo){
    y = substr(verbo, length(verbo), 1)
    if(y == "y"){
        print "Su conjugacion es cried"
        system(echo "pause")
        system(echo "ejecutable.BAT")
    }
    else{
        Error(verbo)
    }
}

#Funcion para identificar tipo_D
function Type_D(verbo){
    Base_3(verbo)
}

#Funcion para identificar base_3
function Base_3(verbo){
    base = substr(verbo, 1, 3)
    if (base == "jum"){
        final_D(verbo)
    }
    else{
        Error(verbo)
    }
}

#Funcion para identificar si termina diferente de y o e
function final_D(verbo){
    p = substr(verbo, length(verbo), 1)
    if(p == "p"){
        print "Su conjugacion es jumped"
        system(echo "pause")
        system(echo "ejecutable.BAT")
    }
    else{
        Error(verbo)
    }
}
#Funcion que muestra el error
function Error(verbo){
    print verbo " no es un verbo registrado o es inexistente"
    system(echo "pause")
    system(echo "ejecutable.BAT")
}