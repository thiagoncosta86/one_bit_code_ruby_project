class Foo
	def call_private
		bar
		#self.bar # erro!  
	end

	private 
	# tudo dentro da classe daqui pra baixo (ou até encontrar outra deficinção de acessibilidade) 
	# será privado

	def bar
		puts "private method"
	end

	public
	# tudo daqui pra baixo é público
	def teste
		puts "teste"
	end
end

foo = Foo.new
foo.call_private

#foo.bar #erro! o metodo bar só é acessível de dentro do escopo da classe Foo.
foo.teste # imprime teste. mas teve que colocar EXPLICITAMENTE  a palavra-chave public