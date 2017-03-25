puts "Definir un objeto string de modo tal que si se imprime se muestre lo siguiente:
 			
 			'ruby, a programmer's best friend.'"

puts

string = "ruby, a programmer\'s best friend."
# Tip: Recordar caracteres de escape

# Se pide realizar:

puts "a. Imprimirlo por pantalla con letra capital."
puts
puts
puts string.capitalize
puts
puts
puts "b. Imprimir la cantidad de espacios."
puts
puts
puts string.count(" ")
puts
puts
puts "c. Imprimirlo con las siguientes conversiones de manera persistentes (que la variable quede modificada):"
puts
puts 
puts "la letra ​a ​debe mostrarse como ​4" 
puts
puts string.gsub!("a", "4")
puts
puts "la letra ​e ​debe mostrarse como ​3" 
puts
puts string.gsub!("e", "3")
puts
puts "la letra ​i ​debe mostrarse como ​1" 
puts
puts string.gsub!("i", "1")
puts
puts "la letra ​o ​debe mostrarse como ​0" 
puts
puts string.gsub!("o", "0")
puts
puts "la letra ​s ​debe mostrarse como ​5" 
puts
puts string.gsub!("s", "5")
puts
puts "d. Eliminar espacios, reemplazar el punto (.) por coma (,) persistente"
puts
puts string.gsub!(" ", "").gsub!(".",",")
puts
puts "e  Imprimirlo en mayúsculas."
puts
puts string.upcase
puts
puts "f. Eliminar el último caracter imprimiendo el resultado. Persistente"
puts
puts string.chop!
puts
puts "g. Imprimir el string al revés." 
puts
puts string.reverse