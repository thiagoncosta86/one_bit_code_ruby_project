module Person
	class Physical
		attr_accessor :name, :cpf

		def initialize (name, cpf)
			@name = name
			@cpf = cpf
		end

		def add
			puts "Pessoa Física Adicionada"
			puts @name
			puts @cpf
		end
	end

	class Juridic
		attr_accessor :name, :cnpj

		def initialize (name, cnpj)
			@name = name
			@cnpj = cnpj
		end

		def add
			puts "Pessoa Jurídica Adicionada"
			puts @name
			puts @cnpj
		end
	end

end

puts "\n"
Person::Juridic.new('M. C. Investimentos','4241.123/0001').add
puts "\n"
Person::Physical.new('José Almeida','425.123.123-12').add
puts "\n"