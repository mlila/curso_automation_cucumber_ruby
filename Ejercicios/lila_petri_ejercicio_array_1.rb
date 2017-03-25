#Ejercicio 1 
 
puts "a) Armar un array con los primeros diez números naturales"
puts
a=[1,2,3,4,5,6,7,8,9,0]
print "a=#{a}"
puts 
puts 
puts "b) Imprimir sus elementos uno debajo del otro." 
puts
 a.each{|element| puts element}
puts 
puts
puts "c) Convertirlos en sus potencias cuadradas dentro del mismo array" 
puts
puts "Convirtiendo ..."
a.map! do |element| 
	
	print "." 
	sleep 1
	element=element ** 2
	
end
puts
puts
puts "d) Mostrar el nuevo valor." 
puts
print "a=#{a}"
puts
puts