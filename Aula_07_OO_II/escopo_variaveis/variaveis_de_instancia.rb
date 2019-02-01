class User
	
	def add(name)
		@name = name
		puts "Usuario adicionado."
		hello
	end

	def hello
		puts "Seja bem vindo, #{@name}!"
	end

	def print_name #metodo para verificar se o conteudo da variavel é o mesmo entre as intancias
		puts @name
	end
end

first_user = User.new
first_user.add('Joao')

second_user = User.new
second_user.add('Mario')

puts "\nUSER names:"
first_user.print_name
second_user.print_name