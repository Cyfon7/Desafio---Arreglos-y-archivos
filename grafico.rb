#Metodo que devuelve el numero mayor de un arreglo
def num_maximo (datos)
    maximo = 0
    datos.each do |elem|
        if (maximo <= elem.to_i)
            maximo = elem.to_i
        end
    end
    maximo
end

#Metodo que imprime barras del tipo de caracter recibido
def print_barra (longitud, items, char_init, char_continuo)
    extra = 0                    #Valor adicional para mantener alineacion con numeros (ensayo y error)
    print char_init
    longitud.times do |i|        #Cuando los numeros son mayores a 10
        if i > 9                 #se añade un caracter mas para que se puedan
            extra += 1           #alinear con los numeros y no quede amontonado
        end                      
        print char_continuo * ( items + extra )   #cada numero se representa con 2 '*'
    end                                           #despues de 9 se hace engorroso mantener
    print "\n"                                    #los numeros alineados asi que le añado "extra"
end

#Metodo que genera el grafico
def chart (datos)
    mayor = num_maximo(datos)                     #Valor maximo para saber hasta donde se mostrara en el grafico
    por_unidad = 2                                #Valor por defecto de cuanto '*' o '-' se repetiran por numero

    datos.each do |elem|                             #Dibuja en el orden del arreglo cada elemento
        print_barra(elem.to_i, por_unidad, "|", "*") #Metodo que genera las barras, le paso el caracter que quiero repita
    end

    print_barra(mayor, por_unidad, ">", "-")            #Dibuja el final del grafico

    extra = 0                  #Hace lo mismo que en print_barra
    print " "
    mayor.times do |i|
        if i > 9               #Cuando el valor es mayor a 10 se desalinea con las barras
            extra += 0.95       #Valor obtenido por ensayo y error :D  con 1 no da, con 0.5 tampoco, con 0.9 hasta el 20 todo bien, con 9.5 hasta el 23 maximo
        end 
        print " " * ( (por_unidad - 1) + extra )    #Esto genera mas espacios cuando el numero es mayor a 9
        print (i + 1)          #Imprime el numero
    end
    print "\n\n\n"
end

puts "USAR LA PANTALLA COMPLETA"
chart([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1])