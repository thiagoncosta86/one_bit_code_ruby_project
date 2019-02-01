require 'cpf_cnpj'

def verifica_cpf(cpf)
	return CPF.valid?(cpf,strict: true)
end

print "digite um cpf: "
cpf = gets.chomp

if(verifica_cpf(cpf))
	result = "eh valido"
else
	result = "nao eh valido"
end

puts "Este numero de CPF (#{cpf}) #{result}"

