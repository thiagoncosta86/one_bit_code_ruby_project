numbers = {A: 10, B: 30, C: 20, D: 25, E: 15}
#max_value =  numbers.values.max #retornou 30

numbers.each do |key, value|
	if value == numbers.values.max
		puts "Elemento do hash de maior valor possui: chave #{key} e valor #{value}"
	end
end