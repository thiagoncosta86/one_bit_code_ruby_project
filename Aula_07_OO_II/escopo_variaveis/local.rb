def foo
	#pode ser definida como local ou _local
	local = "local é acessada apenas dentro deste método"
	puts local
	#puts local.object_id
end

foo

#puts local #nao funciona, pq local nao existe fora do metodo

local =123
puts local #funciona, pq foi criada uma nova variavel aqui
#puts local.object_id
