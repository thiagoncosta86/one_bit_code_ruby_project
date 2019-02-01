=begin
REQUIRE
(veja a pasta animal para o contecudo da aula sobre REQUIRE)
Carrega gems no arquivo, permite outros programas também

ESCOPO DE VARIAVEIS
(veja a pasta escopo_variaveis para os exemplos de ESCOPO DE VARIAVEIS)

LOCAL tem escopo restrito para onde ela foi criada
formato de escrita para declaração: variavel ou _variavel

GLOBAL é fortemente desencorajado, visivel em qualquer lugar do programa,
pode ser alterada em vários locais dificultado o rastreamento de bugs
formato de escrita para declaração: $variavel

VARIAVEIS DE CLASSE
variavel que pode ser acessada em qualquer lugar onde foi criada
o valor contido na variavel de classe é compartilhada entre as instancias desta classe.
formato de escrita para declaração: @@variavel

VARIAVEIS DE INSTANCIA
variavel que pode ser acessada em qualquer lugar onde foi criada
o valor contido na variavel de instancia é acessivel apenas à instancia desta classe, 
ou seja, não é compartilhado.
formato de escrita para declaração: @variavel

ATRIBUTOS (ou variaveis de instancia)
(veja a pasta atributos para o conteudo da aula sobre ATRIBUTOS)
No ruby são sempre PRIVADOS e começam com @, só podem ser alterados por métodos de uma classe.

CONSTRUTORES
(veja a pasta construtores para o conteudo da aula sobre CONSTRUTORES)
Sempre que uma classe é instanciada o ruby procura pelo metodo initialize.
Esse metodo pode ser incluido na classe para que possam ser definidos valores iniciais padrões
para a construcao de um objeto desta classe.
 

=end