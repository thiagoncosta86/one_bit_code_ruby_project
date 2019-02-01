#ARRAY
names = ['Joao','Manuel', 'Juca']

name = 'Thiago Costa'

=begin
names.each do |name|
	puts name #imprime elementos do arrays
	#puts name.object_id
end
=end

#puts name #imprime Thiago Costa
#puts name.object_id

#HASH

aulas = ['Aula 1' => 'liberada', 'Aula 2' => 'liberada', 'Aula 3' => 'liberada', 'Aula 4' => 'liberada', 'Aula 5' => 'em breve']
=begin
aulas.each do |key, value|
	puts "#{key} #{value}"
end
=end


#MAP
=begin
array = [1,2,3,4]
puts "\n Executando .map! multipolicando cada item por 2."
new_array = array.map do |a|
	a*2
end


puts "\n Array Original"
puts "#{array}"

puts "\n Novo Array"
puts "#{new_array}"

puts "\n Executando .map! multipolicando cada item por 2."
#o sinal de exclamacao (!) forca que o conteudo original do array seja modificado
array.map! do |a|
	a*2
end

puts "\n Array Original"
puts "#{array}"
puts ""
=end


#SELECTION
array=[1, 2, 3, 4, 5, 6]

selection = array.select do |a|
	a >=4
end
puts selection


hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'tres'}

puts 'Selecionando keys com valor maior que 0'
selection_key = hash.select do |key, value|
	key > 0
end

puts selection_key