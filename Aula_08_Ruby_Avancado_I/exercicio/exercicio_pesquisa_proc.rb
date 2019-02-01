=begin
Primeiramente é necessario definir o que é um bloco em código Ruby.
Um bloco é um trecho de código encapsulado que pode ser utilizado para uma iteração/loop.	


Um bloco costuma ser delimitado por chaves {..} ou usando do..end. Por si só o bloco 
não pode ser utilizado.
Ex.:
{|x| puts 2* x} #Erro!

Um bloco não é um objeto, então não pode ser atribuido a uma variavel.
Ex.:
a = {|x| puts 2* x} #Erro!

Um bloco pode ser utilizado para realizar operações repetidas ou com um array.
Ex.:
[10,20,30].each {|x| puts 2* x} #imprime 20,40 e 60

names = ["Leon","Clare","Ada","Sherry"]
names.each do |name| 
	puts "Congratulations, #{name}! You survived the Raccoon City incident!" #print the message with each name
end

Um Proc é um objeto. Então pode ser atribuido a uma variável, pode ser passada como parametro para um método.


a = Proc.new {|x| puts x**2}
a.call(456) #imprime 207936

#Um Proc ignora o numero de argumentos a mais.
a = Proc.new {|x| puts x**2}
a.call(7,3,6) #imprime 49 e ignora o restante

a = Proc.new {|x,y| puts x*2 + y}
a.call(3,5,8976) #imprime 11 e ignora o restante

Lambda é um tipo especial de Proc e possui algumas diferenças em relação a esta.

lam = lambda { |x| puts x*2 }
[1,2,3].each(&lam) #imprime 2,4,6

lam = lambda { puts "Hello World" }
lam.call

Lambdas checam a quantidade de argumentos passados na chamada, Procs não


proc = Proc.new { |x| puts x }
proc.call(2) #imprime 2
proc.call #retorna nil
proc.call(1,2,3) #imprime 1 e ignora o restante

lam = lambda { |x| puts x }
lam.call(2) #imprime 2
lam.call                       #Erro!
lam.call(1,2,3)                #Erro
=end
