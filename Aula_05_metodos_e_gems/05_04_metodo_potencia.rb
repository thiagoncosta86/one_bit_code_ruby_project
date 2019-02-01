def potencia(num,exp)
	num**exp
end

puts "Calculo de potencia de numeros inteiros."
print "Digite o numero da base:"
num = gets.chomp.to_i
print "Digite o numero do expoente:"
exp = gets.chomp.to_i
result = potencia(num,exp)
puts "Resultado: #{result}"