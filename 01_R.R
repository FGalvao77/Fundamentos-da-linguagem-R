# R

# INTRODUÇÂO

  # R é um software estatístico/linguagem de programação
  # muito utilizado no campo acadêmico. Domina-lo é requesito
  # essencial para Ciência de Dados e áreas correlatas,
  # através da linguagem podemos manipular, visualizar dados e,
  # criar modelos utilizando técnicas de Machine Learning,
  # O R também fornce recursos para construir aplicações com
  # o R Markdown (sites, livros online, formulários...).

# Vantagens da utilização do R:
  # - gratuito (open-source)
  # - comunidade cada vez mmais ativa e em amplo crescimento
  # - milhares de pacotes para diversas aplicações
  # - multi-plataforma, compátivel com Windows, Mac, Linux,..

# Vamos para nosso primeiro código!
'Hello, World!'
# [1] "Hello, World!"

# Atribuíndo um valor a variável
x = 3
x
# [1] 3


# CONCEITOS BÁSICOS

  # Declarando variávies, comentando código e imprimindo na tela:
    # declarar uma variável podemos usar "=" e/ou "<-"
    # para comentar use "#"
    # para imprimir use o "print()"
    # e utilize o "readline(prompt="...")" para receber uma entrada

# declarando duas variáveis
x = 'Hello, R!'
y <- 'Welcome, Fernando!!!'

# imprimindo as variáveis
print(x)
print(y)

# solicitando uma entrada ao usuário o seu nome e instanciando na variável "nome"
nome <- readline('Qual é o seu nome? ')

# vamos imprimir o valor da variável "nome" de duas formas
nome
print(nome)


# DADOS E OPERADORES

  # Tipos de Dados(básicos)

    # Character(“Texto”), neeste tipo inserimos caracteres, podendo ser números, textos, símbolos…;
    # Integer (1L), Integer se refere a números inteiros e utilizamos o “L” para determina-lo, 
    # diferente do Numeric, onde os números são decimais: 1.0 e não 1;
    # Numeric (7.25) Números decimais, mesmo que declarando-os como 12, o sistema retornará 12.0, por exemplo;
    # Logical (T/F ou TRUE/FALSE) Tipo de dado com retorno TRUE ou FALSE, assim como T ou F. TRUE quando atendidas;
    # as condições e FALSE quando não atendidas. Nos aprofundaremos logo logo neste tipo de dado: tenha paciência.

# character
caractere = 'Texto caractere'
class(caractere)

# integer
inteiro = 15L
class(inteiro)

# numeric
numero = 15
class(numero)

# numérico decimal
PI = 3.14
class(PI)

# logical
logico = TRUE
class(logico)


# OPERADORES

  # Operador    # Operação
  # +           adição
  # -           subtração
  # *           multiplicação
  # /           divisão
  # ^ ou **     exponenciação
  # %%          retorna o resto da divisão
  # %/%         retorna o valor inteiro da divisão 

# adição
100 + 100

# subtração
100 - 30

# multiplicação
100 * 2

# potenciação
3 ^ 2 # ou
3 ** 2

# divisão
10 / 3

# retorna o resto da divisão
10 %% 3

# retorna o valor inteiro da divisão
10 %/% 3

# extra - raiz quadrada
sqrt(16)


# ESTRUTURA DE DADOS

# Vetor
vet = 3
print(class(vet))
is.vector(vet)  # retorna TRUE (verdadeiro)

# podemos instanciar diversos elementos em um vetor
# use a função "c()"
vet_01 = c(1,2,3, 'texto')
class(vet_01) # retorna character pois todos elementos serão do mesmo tipo
is.vector((vet_01))

# Lista (elementos de tipos diferentes)

# declarando as variáveis "x, y, z"
# e concatenando em outra variável "lista"
x = c('tetxto1', 'texto2')
y = c(1,2,3)
z = c(T,F,T)
lista = c(x,y,z)

# imprimindo o resultado das variávies
print(x)
print(y)
print(z)
print(lista)

# imprimindo o tipo de cada variável
print(class(x))
print(class(y))
print(class(z))
print(class(lista))


# Matriz (todos os elementos serão do mesmo tipo)

# instaciando uma matriz "1 x 2" - uma linha por duas colunas
matriz = matrix(c(1,2),
                nrow = 1, ncol = 2, 
                byrow = TRUE)
matriz

# outro exemplo
# uma matriz "3 x 4" - de três linhas por quatro colunas
outra_matriz = matrix(c(1,2,3,4,5,6,7,
                        8,9,0,NaN,NaN),
                      nrow = 3, ncol = 4,
                      byrow = T)
outra_matriz


# Dataframe (estrutura de dados tabular)

# declarando um dataframe
x = data.frame(
  # instanciando o nome das colunas
  nome = c('Fernando','Kátia','Sara','Eloah'),
  idade = c(43L,39L,21L,13L),
  sexo = c('M','F','F','F')
)

is.data.frame(x)  # retorna TRUE - verdadeiro
x

# imprimindo a class da variável "x"
class(x)
