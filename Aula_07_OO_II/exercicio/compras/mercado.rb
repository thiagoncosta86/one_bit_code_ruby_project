class Mercado
	def initialize (produto_novo)
		@produto = produto_novo
	end

	def comprar
		puts "Você comprou #{@produto.nome} no valor de #{@produto.preco}."
	end
end