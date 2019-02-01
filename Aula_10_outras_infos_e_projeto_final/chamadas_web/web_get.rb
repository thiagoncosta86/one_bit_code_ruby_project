require 'net/http'

example = Net::HTTP.get('example.com','/index.html')

File.open('exemple.html','w') do |line| # se o arquivo não existir, será criado
	line.puts(example)
end