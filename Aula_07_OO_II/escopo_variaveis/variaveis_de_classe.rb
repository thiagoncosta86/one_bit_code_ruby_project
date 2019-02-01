class User
	@@user_count = 0
	def add(name)
		puts "User #{name} adicionado."
		@@user_count += 1
		puts @@user_count
	end

	def print_user_count #metodo para verificar se o conteudo da variavel é o mesmo entre as intancias
		puts @@user_count
	end
end

first_user = User.new
first_user.add('Joao')

second_user = User.new
second_user.add('Mario')

puts "\n USER COUNTS:"
first_user.print_user_count
second_user.print_user_count