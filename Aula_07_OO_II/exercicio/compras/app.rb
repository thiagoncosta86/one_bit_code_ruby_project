require_relative "produto.rb"
require_relative "mercado.rb"

prod1 = Produto.new("produto de teste", 5.45)
prod2 = Produto.new("chocolate", 15.90)
prod3 = Produto.new("livro", 2.31)

merc1 = Mercado.new(prod1)
#puts merc1.object_id
merc1.comprar


merc1 = Mercado.new(prod2)
#puts merc1.object_id
merc1.comprar

merc1 = Mercado.new(prod3)
#puts merc1.object_id
merc1.comprar

