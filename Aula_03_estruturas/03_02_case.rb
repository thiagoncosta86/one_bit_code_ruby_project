puts 'Digite o numero do mes em que voce nasceu:'
month = gets.chomp.to_i

case month
when 1..3
	puts 'Voce nasceu no comeco do ano'
when 9..12
	puts 'Voce nasceu no final do ano'
when 4..6
	puts 'Voce nasceu na primeira metade do ano'
when 7..9
	puts 'Voce nasceu na segunda metade do ano'
else
	puts 'Nao foi possivel identificar'
end


	