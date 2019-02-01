class Esportista
	def competir
		puts "Participando de competicoes!"
	end

	def correr
		puts "Melhorando o folego!"
	end
end

class JogadorDeFutebol < Esportista
	def correr
		puts "Correndo atras da bola!"
	end
end

class Maratonista < Esportista
	def correr
		puts "Percorrendo o circuito!"
	end
end

class Nadador < Esportista
	def nadar
		puts "Nadando rapidamente!"
	end 
end

class Lutador < Esportista
	def lutar
		puts "Enfrentado o adversario!"
	end
end

jogador = JogadorDeFutebol.new
atleta = Maratonista.new
nadador = Nadador.new
lutador = Lutador.new
puts "\n"
jogador.competir
jogador.correr

puts "\n"
atleta.competir
atleta.correr

puts "\n"
nadador.competir
nadador.nadar

puts "\n"
lutador.correr
lutador.competir
lutador.lutar