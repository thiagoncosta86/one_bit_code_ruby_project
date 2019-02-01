=begin
class Foo
	attr_accessor :teste 
	def bar
		puts self #é o mesmo que escrever puts nome_do_objeto
	end
end

foo = Foo.new
puts foo
foo.bar
=end

class Pen
	attr_accessor :color
	def pen_color
		puts "The color is " + self.color #recupera o atributo da propria instancia
	end
end

pen = Pen.new
pen.color = "blue"
pen.pen_color