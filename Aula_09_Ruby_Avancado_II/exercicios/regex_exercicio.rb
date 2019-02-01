padrao = /\([0-9]{2}\)[0-9]{5}-[0-9]{4}/

string_teste = "Olá, tudo bem? Meu whats app é (99)74321-1234"
match_teste = string_teste.match(padrao)

puts match_teste #imprime "(99)74321-1234"
puts match_teste.pre_match # imprime "Olá, tudo bem? Meu whats app é "
puts match_teste.post_match # o numero é a ultima coisa da string, entao nao imprime nada