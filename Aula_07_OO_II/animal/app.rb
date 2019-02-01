=begin 
#exemplo inicial
#require "./animal.rb" #tenho que estar executando o arquivo direto na pasta
require_relative "animal" 

animal = Animal.new
animal.pular
=end

require_relative "animal" 
require_relative "cachorro"

puts "--Animal--"
animal = Animal.new
animal.pular

puts "--Cachorro--"
cachorro = Cachorro.new
cachorro.pular
cachorro.latir