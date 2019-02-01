a = 10
puts a.class

b = 10.01
puts b.class

boo = true
puts boo.class

boo = false
puts boo.class

words = "Hello world!"
puts words
puts words.class

onebitcode_array = ['possition_0','possition_1','possition_2','possition_3','possition_4']
puts onebitcode_array.class

onebitcode_array.each  { |x|
	puts x
}

puts onebitcode_array[0].class

onebit_symbol = :ruby_symbol
puts onebit_symbol
puts onebit_symbol.class
puts onebit_symbol.object_id

second_symbom = :ruby_symbol
puts second_symbom
puts second_symbom.object_id

onebit_hash = {course: 'ruby', language: 'pt-br', locale: 'onebitcode.com'}

puts onebit_hash
puts onebit_hash.class