hash = {}
3.times do
	print 'digite uma chave: '
	chave = gets.chomp
	print 'digite um valor para essa chave: '
	valor = gets.chomp

	hash[chave] = valor
end

hash.each do |key,value|
	puts "uma das chaves e #{key} e o seu valor e #{value}"
end