# TO DO List:
# 1 - (CHECK!) criar classe traducao para fazer isso
# 2 - (CHECK!)usar API para traduzir
# 3 - (CHECK!) o arquivo devera ter nome no formato data_hora exemplo 01-24-19_20:30.txt
# 4 - (CHECK!) guardar a "idioma original": "frase original"  "idioma tradução": "frase traduzida"

require 'open-uri'
require 'json'

class Normaliza
  #esta funão foi returada de https://gist.github.com/lfzawacki/6223816
    def self.remove_accents(str)
      accents = {
        ['á','à','â','ä','ã'] => 'a',
        ['Ã','Ä','Â','À'] => 'A',
        ['é','è','ê','ë'] => 'e',
        ['Ë','É','È','Ê'] => 'E',
        ['í','ì','î','ï'] => 'i',
        ['Î','Ì'] => 'I',
        ['ó','ò','ô','ö','õ'] => 'o',
        ['Õ','Ö','Ô','Ò','Ó'] => 'O',
        ['ú','ù','û','ü'] => 'u',
        ['Ú','Û','Ù','Ü'] => 'U',
        ['ç'] => 'c', ['Ç'] => 'C',
        ['ñ'] => 'n', ['Ñ'] => 'N'
      }
      accents.each do |ac,rep|
        ac.each do |s|
          str = str.gsub(s, rep)
        end
      end
      str = str.gsub(/[^a-zA-Z0-9\. ]/,"")
      str = str.gsub(/[ ]+/," ")
      #str = str.gsub(/ /,"-")
      #str = str.downcase
  end
end

class Traducao
  BASE_URI = 'https://translate.yandex.net/api/v1.5/tr.json/translate'.freeze
  API_KEY = 'trnsl.1.1.20190130T215419Z.e36251b0d1199408.7c932f3da1c70fc127a8fca068fb9b010557dbe2'.freeze

  attr_accessor :toriginal, :ioriginal, :ttraducao, :itraducao

  def initialize(toriginal, ioriginal, itraducao)
    @toriginal = toriginal
    @ioriginal = ioriginal
    @itraducao = itraducao
  end

  def traduzir
    puts 'traduzindo...'
    
    # abre a API de tradução para pegar o resultado
    response = open("#{BASE_URI}?key=#{API_KEY}&text=#{@toriginal}&lang=#{@ioriginal}-#{@itraducao}").read

    # retorna um array de uma posicao
    json = JSON.parse(response)
    @ttraducao = json['text'][0] 
    
    #imprime na tela na tradução
    puts "Texto traduzido de #{ioriginal} para #{@itraducao}: #{@ttraducao}"
    
    #chama o método para salvar a tradução
    salva_traducao 
  end

  # cria um arquivo e salva a tradução nele
  def salva_traducao
  	# para criar o nome do arquivo no fomato data-de-hoje_hora:minutos
    time = Time.new
    file_name = time.strftime('%m-%d-%Y') + '_' + time.strftime('%H:%M') + '.txt'
    line = "#{@ioriginal}: #{@toriginal}\n\n#{@itraducao}: #{@ttraducao}\n"

    # abre o arquivo, se não existir cria. 
    # depois adiciona as linhas novas e fecha
    File.open(file_name.to_s, 'a+') do |newline|	# "a" acrescenta no final do arquivo
      newline.puts(line)
    end
  end
end

# pega o texto e filtra caracteres com acentos e o cedilha
puts 'Digite um texto:'
texto_original = Normaliza.remove_accents(gets.chomp)
# apenas verificando o resultado
# puts texto_original

puts 'Digite em qual idioma este texto está escrito:'
puts 'português-pt, inglês-en, francês-fr, espanhol-es, russo-ru, etc'
idioma_original = gets.chomp

puts 'Digite para qual idioma este texto deverá ser traduzido:'
puts 'português-pt, inglês-en, francês-fr, espanhol-es, russo-ru, etc'
idioma_traducao = gets.chomp

# cria um objeto da classe Traducao e chama o metodo traduzir
traducao = Traducao.new(texto_original, idioma_original, idioma_traducao)
traducao.traduzir