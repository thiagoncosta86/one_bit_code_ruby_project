#COLLECTIONS - ARRAYS E HASHES

estados = []
#puts estados
estados.push('Espirito Santo')
#puts estados
estados.push('Rio Grande d')
#puts estados
estados.push('Amazonas', 'Bahia', 'Pernambuco', 'Sao Paulo')
estados.insert(0, 'Acre','Amapa')
estados.insert(2,'Ceara')

#puts estados[4]
estados[4] = 'Rio Grande do Sul'
#puts estados[4]

#puts estados[1..2]
#puts estados[-3]
#puts estados[-3..-1]

#puts estados.first
#puts estados.last
#puts estados.count
#puts estados.empty? #vazio-> true, algum elemento -> falso

#cidades = []
#puts cidades.empty?

#puts estados.include?('Acre')
#puts estados.include?('Santa Catarina')

#estados.delete('Ceara')
#estados.delete_at(2)

estados.pop
#puts estados


#HASHES

capitais = Hash.new # OU capitais = {}
capitais = {acre: "Rio Branco", sao_paulo: "Sao Paulo"}
capitais[:minas_gerais] = "Belo Horizonte"

capitais.delete(:acre)

puts capitais
#puts capitais.keys
#puts capitais.values
