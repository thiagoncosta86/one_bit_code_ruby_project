time = Time.new
puts time
puts time.year 		# ano
puts time.month 	# mes
puts time.day 		# dia

puts time.yday 		# dia do ano (de 1 ate 365 ou 366)

puts time.mday 		# dia do mes
puts time.wday 		# dia da semana

puts time.strftime("%d/%m/%y")  # d -> dia m -> mes y-> ano
puts time.strftime("%D")  # D -> data somente, no formato original
puts time.strftime("%M")  # M -> minutos
puts time.thursday? #colocando o "diadasemana?" é possivel saber se hoje é o dia sendo testado
puts time.friday? 

time2 = Time.new
puts time == time2



