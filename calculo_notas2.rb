def notas_mas_alta (alumno_data2)

    final_data_alumnos = []
    
    alumno_data2.each do |datos|
        alumno = []
        alumno = datos.split(', ')

        nota_mayor = 0

        (1..(alumno.count - 1)).each do |i|
            if (nota_mayor <= alumno[i].to_i)
                nota_mayor = alumno[i].to_i
            end
        end
        final_data_alumnos << nota_mayor
    end
    final_data_alumnos
end

notas = open("./notas.data").readlines
notas.map! { |elem| elem.chomp}

print "\nNotas mas alta = #{notas_mas_alta(notas)}\n\n"