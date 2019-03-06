# Ejercicio 1:

arreglo = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
#imprimir el primer elemento
puts [0]

#imprimir el último elemento
puts [-1]

#Imprimir, utilizando una iteración, todos los elementos

for i in arreglo
	puts i
end

# Imprimir, utilizando una iteración, todos los elementos junto con su índice.

arreglo.each_with_index do |item, indice|
	puts " indice:#{indice}-#{item}"

end

#Imprimir todos los elementos que se encuentren en una posición (índice) par.

arreglo.each_with_index do |i,j|
	puts "#{i}" if j.even?
end


# ___________________________________________________________________
# Ejercicio 2:


a = [1,2,3,9,1,4,5,2,3,6,6]
# Eliminar el último elemento
puts 'arreglo original'
p a
a.delete_at(-1)
puts 'elimina ultimo elemento del arreglo'
  p a


#Eliminar el primer elemento.

a.delete_at(0)
puts 'elimina el primer elemento'
p a


#Eliminar el elemento que se encuentra en la posición media, si el arreglo tiene un número par de elementos entonces remover el que se encuentre en la mitad izquierda.

if (a.length).even?
	elimina=(a.length/2)/2
	a.delete_at(elimina)
	puts 'elimina elemento que se encuentra en la posicion media, de la media en el lado izquierdo '
	 p a
else
	elimina = a.length/2
	a.delete_at(elimina)
	puts 'elimina elemento que se encuentra en la posicion media '
	 p a
end



 #Borrar el último elemento mientras ese número sea distinto a 1.
 a.delete_at(-1) if a[-1] !=1
 puts 'borra ultimo elemento siempre y cuando sea distinto de uno'
 p a

 #Utilizando un arreglo vacío auxiliar y operaciones de push and pop invertir el orden de los
#elementos en un arreglo
auxiliar=[]

a.length.times do |i|
aux = a.pop
auxiliar.push(aux)
 end
 puts 'arreglo invertido '
 p auxiliar


# ___________________________________________________________________
# Ejercicio 3:


a = [1,2,3,9,1,4,5,2,3,6,6]

# Eliminar todos los números pares del arreglo.


a.each_with_index do  |i,indice|
	if i.even?
		a.delete_at(indice)
	end
end

puts 'arreglo sin numeros pares'
p a


#Obtener la suma de todos los elementos del arreglo utilizando .each
#Obtener el promedio de los elementos del arreglo.
suma = 0
promedio = 0
a.each do |e|
	suma = suma + e
	end
	promedio = suma/a.length
puts 'suma',suma
puts 'promedio',promedio

#Incrementar todos los elementos en 1 retornando un nuevo arreglo.
array = []
a.each do |j|
	j+=1
	array.push(j)
	end

p array

# ___________________________________________________________________
# Ejercicio 4:


products = %w(producto1 producto2 producto3 producto4)

html =''
products.each do |i|
	html+="<div class='product'>#{i}</div>\n"
end
puts html

# ___________________________________________________________________
# Ejercicio 5:

products = %w(producto1 producto2 producto3 producto4)
prices = %w(1000 2000 1500 950)

html =''

products.each_with_index do |item,indice|
	html+= "<div class='product'>"
	html += "<p>#{item}</p><p>#{prices[indice]}</p>"
	html += "</div>\n"
end
puts html

# ___________________________________________________________________
# Ejercicio 6:

a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]

a.concat (b)
print "#{a}\n"

a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]

print "#{a | b}\n"
print "#{a & b}\n"
print a.zip(b)