5.times {puts "Exec the block."}

puts "\n"

sum = 0
numbers = [5,10,5]

numbers.each {|number| sum += number}
puts sum

puts "\n"

foo = {2=>3,4=>5}

foo.each do |key,value|
	puts "key: #{key}"
	puts "value: #{value}"
	puts "key * value = #{key * value}"
	puts "---"	
end


def teste #declara a funcao, sem dizer que pode passar algo como paramentro
	if block_given?
		#Call the block
		yield #cada yield executa uma vez o bloco de codigo que foi passado como parametro
		yield
	else 
		puts "Exec function without the block"
	end
end

puts "\n"
teste { puts "Exec the block" } #chama a funcao passando como parametro bloco
puts "\n"
teste


puts "\n"
#outra forma de receber blocos em um metodo como parametro é usar o &
def teste_com_bloco (name,&block)
	@name = name
	block.call
end

teste_com_bloco("Thiago") { puts "Hello, #{@name}" }

puts "\n"

#é possivel passar um block para uma funcao e executar o block passando parametros para este.
def metodo_exemplo (numbers,&block)
	if block_given?
		numbers.each do |key,value|
			block.call(key,value)
		end
	end
end

numbers = {2=>2, 3=>3, 4=>4}

metodo_exemplo (numbers) do |key,value|
	puts "#{key} * #{value} = #{key * value}"
	puts "#{key} + #{value} = #{key + value}"
	puts "---"
end