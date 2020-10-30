def nota_mas_alta (alumno_data)
    alumno = alumno_data.split(', ')

    nota_mayor = 0

    (1..(alumno.count - 1)).each do |i|
        if (nota_mayor <= alumno[i].to_i)
            nota_mayor = alumno[i].to_i
        end
    end
    nota_mayor
end

notas = open("./notas.data").readlines
notas.map! { |elem| elem.chomp}

notas.each { |nota| puts nota_mas_alta(nota) }


