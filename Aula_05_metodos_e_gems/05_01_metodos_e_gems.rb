#metodos
def hello name #hello eh o nome do metodo e name eh um parametro para este metodo
	puts "Ola #{name}"
end

#hello "Thiago"
#hello "Programador"


=begin
def talk
	puts"Ola, como voce esta?"
end

talk
=end

def talk(first_name, last_name)
	puts "Ola #{first_name} #{last_name}, como voce esta?"
end

#first_name = "Thiago"
#last_name = "Costa"

#talk(first_name,last_name)


def signal(color = 'vermelho')
	puts "O sinal esta #{color}"
end

#signal

#color = 'verde'
#signal(color)


def compare(a, b)
	a > b
end

a = 1 
b = 2

result = compare(a, b)
puts "O resultado da comparacao eh '#{result}'"

