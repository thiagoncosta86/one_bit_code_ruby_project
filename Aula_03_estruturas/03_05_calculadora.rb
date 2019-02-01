loop do
	puts "\nQual operacao deseja realizar?"
	puts "1 - Somar (+) \n2 - Subtrair (-)\n3 - Multiplicar (*)\n4 - Dividir(\\)\n\n0 - Sair\n"
	print "Opcao: "
	operacao = gets.chomp.to_i

	if operacao == 0
		exit
	elsif (operacao >=5)
			puts "\nOperacao invalida!\n"
			next
	end

	print "Digite o primeiro numero: "
	num1 = gets.chomp.to_i

	print "Digite o segundo numero: "
	num2 = gets.chomp.to_i

	print "Resultado: "

	case operacao
	when 1
		puts num1 + num2
	when 2
		puts num1 - num2 
	when 3
		puts num1 * num2
	when 4
		unless num2 == 0
			puts num1 / num2
		else
			puts "Nao divida por ZERO!\n"
		end
	when 0 
		exit
	else
		puts "Operacao invalida!\n"
		next
	end
end