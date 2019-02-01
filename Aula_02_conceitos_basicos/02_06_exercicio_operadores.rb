# ENTRADA E SAIDA COM VARIAVEIS E OPERADORES
puts 'ENTRADA E SAIDA COM VARIAVEIS E OPERADORES'

print 'digite o primeiro numero inteiro: '
num1 = gets.chomp.to_i
print 'digite o segundo numero inteiro: '
num2 = gets.chomp.to_i

resultado = num1 + num2
puts "soma: #{resultado}"

resultado = num1 - num2
puts "subtracao: #{resultado}"

resultado = num1 * num2
puts "multiplicacao: #{resultado}"

resultado = num1 / num2
puts "divisao: #{resultado}"

resultado = num1 % num2
puts "modulo: #{resultado}"

resultado = num1**num2
puts "potencia: #{resultado}"
