puts "a) Armar un array que contenga tres elementos tipo array con los números 1,2 y 3 cada uno."
puts
puts
a=[[1,2,3],[1,2,3],[1,2,3]]
print "a=#{a}"
puts
puts
puts "b) Convertirlo en un array que tenga como elementos la sucesión de números del 1 al 9."
puts
a.flatten!
puts
puts "Convirtiendo ..."

a.map!.each_with_index do |element, indice| 
	
	print "." 
	sleep 1
	element=indice +1
	
end
puts
puts
puts "c) Mostrar el array resultante"
puts
print "a=#{a}"
puts

