File.open('shopping_list.txt','a') do |line|	# "a" acrescenta no final do arquivo
	line.puts('arroz')							# "w" sobrescreve as informações do arquivo
	line.puts('feijão')							# "r" somente leitura
	line.print('azeite')
	line.print(' de ')
	line.print('oliva')
end