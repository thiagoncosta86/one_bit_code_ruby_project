=begin
BLOCKS
(veja o arquivo block.rb para ver os exemplos desta aula)
Pode ser entendido como uma funcao anonima.
São definidas entre do..end ou colchetes e da mesma forma que os métodos, podem receber parâmetros
É posivel passar um bloco na chamada de um metodo e usar o yield no corpo do método para 
imediatamente executar o bloco.

LAMBDA
São similares aos blocos, mas podem ser salvas em variáveis para serem reutilizadas.
Lambda é um tipo especial de PROC.
Declaracao:
nome_do_lambda = lambda {bloco de codigo a ser executado}
nome_do_lambda.call executa o codigo lambda 

Outra maneira:
nome_do_lambda = -> {bloco de codigo a ser executado}
nome_do_lambda.call executa o codigo lambda 

É possivel passar parametros para o lambda também:
nome_do_lambda = -> (parametros) { parametros.each { |parametro| puts parametro } }
nome_do_lambda.call executa o codigo lambda 

MODULES
Podem ser usador de duas maneiras. Primeiro para criar um conteiner/agrupamento para objetos
relacionados (classes, constantes, métodos ou modules). Segundo, podem servir para emular/resolver
o problema da herança múltipla (mixins)


=end
