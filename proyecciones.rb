def simulacion (datos, aumento, ini, fin)
    acum = 0
    for i in (ini..fin)
        acum += datos[i].to_f
    end
    acum * aumento
end

data = open("./ventas_base.db").read.split(', ')

res_sim = []

2.times do |i|
    #Calculo de argumentos
    #aumento      = (((i + 1) * 0.1) + 1) si i=0 -> 1.1 - si i=1 -> 1.2
    #inicio array = (0 + (6 * i))         si i=0 -> 0   - si i=1 -> 6
    #final array  = (5 + (6 * i))         si i=0 -> 5   - si i=1 -> 11

    res_sim[i] = sprintf "%0.2f", simulacion(data, ((i + 1) * 0.1) + 1, (0 + (6 * i)), (5 + (6 * i)))
end

File.write("./resultados.data", res_sim.join("\n"))
