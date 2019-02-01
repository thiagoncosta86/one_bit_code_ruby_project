first_lambda = lambda { puts "this is my first lambda" } #criando o lambda
first_lambda.call #chamando a funcao
#puts first_lambda.class

puts "---"

second_lambda = -> { puts "this is my second lambda with a small change of sintax" } #outra maneira
second_lambda.call

puts "---"

third_lambda = -> (names){ names.each { |name| puts name } } #outra maneira
names = ['Joao','Maria','Pedro']
third_lambda.call(names)

puts "---"

#lambda com múltiplas linhas
my_lambda = lambda do |numbers|
	index = 0
	puts 'Número atual + Próximo número'
	numbers.each do |number|
		return if numbers[index] == numbers.last
		puts "(#{numbers[index]}) + (#{numbers[index+1]})"
		puts numbers[index] + numbers[index+1]
		index+=1
	end
end

numbers = [1, 2, 3, 4]
my_lambda.call(numbers)

numbers = [8, 9, 3, 4]
my_lambda.call(numbers)

#lambda pode ser passado como parametro para um metodo. mais de um lambda pode ser passado como parametro
puts "\n"
def metodo_com_lambdas(bloco_lambda_1,bloco_lambda_2)
	bloco_lambda_1.call
	bloco_lambda_2.call
end

bl_lambda_1 = lambda {puts "first lambda as a parameter"}
bl_lambda_2 = lambda {puts "second lambda as a parameter"}

metodo_com_lambdas(bl_lambda_1, bl_lambda_2)