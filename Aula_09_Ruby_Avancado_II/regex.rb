=begin 
#formas:
/abcd/.class
puts /abcd/.class

%r{abcd}
puts %r{abcd}.class

Regexp.new('abcd') 
puts Regexp.new('abcd').class

#padroes para comparacao com a regex
#=~ # simbolo para comparacao exata
puts /by/ =~ 'ruby' #retorna a posicao no array que começa o padrão, no caso é 2
puts /py/ =~ 'ruby' #retorna nil quando não encontra


#Metodo Match
frase = "I\'m learning ruby!"
match_data = /by/.match(frase) 

#com o metodo Match é possível recuperar mais informações, inclusive de informaçoes 
#do existe antes do casamento da string fornecida com a regex
puts match_data.class #MatchData
puts match_data # imprime "by"
puts match_data.post_match # imprime "!"
puts match_data.pre_match # imprime "I'm learning ru"

puts /\?/.match('Tudo bem?') # imprime "?"

puts /[t]exto/.match('texto começando com t.') #imprime "texto"

puts /[1-5]/.match("1,2,3")#imprime 1
puts /[2-5]/.match("1,2,3")#imprime 2
puts /[3-5]/.match("1,2,3")#imprime 3
puts /[4-5]/.match("1,2,3")#imprime nil
puts /[a-z]/.match("Oi")#imprime "i"

puts /[A-Z]/.match("A4")#imprime A
puts /[0-9]/.match("A4")#imprime 4
puts /\d/.match("A4")#imprime 4

puts /A\d/.match("A6")#imprime A6
puts /Ab\d/.match("A6")#imprime nil

puts /\d{2}-\d{9}/.match("12-999876543")#imprime "12-999876543"
puts /\d{2}-\d{9,}/.match("12-999876543")#9 ou mais caracteres depois do traço. imprime "12-999876543"

=end
