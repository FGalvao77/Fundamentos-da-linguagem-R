### LINGUAGEM R ###

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
nome <- readline(prompt = 'Qual é o seu nome? ')

# vamos imprimir o valor da variável "nome" de duas formas
nome
print(nome)

# podemos exemplificar o comando de entrada, sem a necessidade do "promppt = "


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

# imprimindo o resultado das variáveis
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

# instanciando uma matriz "1 x 2" - uma linha por duas colunas
matriz = matrix(c(1,2),
                nrow = 1, ncol = 2, 
                byrow = TRUE)
matriz

nrow(matriz)  # retorna número de linhas do dataframe
ncol(matriz)  # retorna número de colunas do dataframe
dim(matriz)   # retorna número de linhas e colunas

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


# CONDICIONAIS

# Quando você estiver programando, é importante inserir algumas regras em seu código 
# para que a máquina saiba O QUE fazer, QUANDO fazer e COMO fazer. 
# E para essas necessidades, temos o uso das CONDICIONAIS, ferramentas essenciais, 
# uma vez que queremos a ação executada apenas se certa condição for atendida. 
# Como resposta, temos um retorna lógico, TRUE ou FALSE (verdade ou falsa)
# Segue um exemplo simples e didático: 
# você sai com guarda-chuva SE acredita que pode chover. 
# Assim sendo você possui 1 condicional para levar o guarda chuva.

# Operadores lógicos

# Operador      # Lógica
# <             menor
# >             maior
# <=            menor ou igual
# >=            maior ou igual
# ==            igual
# !=            diferente
# !             negação ("not")

# menor
3 < 5 # TRUE

# maior
3 > 5 # FALSE

# igual
3 == 3  # TRUE

# diferente
3 != 5  # TRUE

# "a" é igual a 1
'a' == 1 # FALSE

# "Ciência de Dados" é igual a "Ciẽncia de Dados"
'Ciência de Dados' == 'Ciência de Dados' # TRUE


# if()

# sintaxe
# if(condição) {
#   comandos executados quando TRUE
# }

# exemplo 1
a = 1
b = 100

if (a < b) {  # avaliando se "a" é menor que "b"
  # se for verdade, retorna a mensagem abaixo
  print('A é menor que B')
}

# exemplo 2
a = 'Fernando'
b = 43

if (a == b) { # "a" é igual "b"
  # condição falsa, não retorna a mensagem
  print('A é igual a B')
}

# if else()

# sintaxe
# if (condiçao) {
#   comandos executados quando TRUE
# } else {
#   comandos executados quando FALSE
# }

# definindo duas variáveis "a, b", entrada via teclado
# avaliando as entradas e retornando uma mensagem
a = as.integer(readline('Digite um número inteiro para A: '))
b = as.integer(readline('Digite outro valor inteiro para B: '))

if (a < b) {
  print('A é menor que B')
} else {
  print('A é maior que B')
}

# ifelse()

# sintaxe (possui uma sintaxe simplificada)
# ifelse(condição, 'retorno se TRUE', 'retorno se FALSE')
a = as.integer(readline('Digite um número inteiro para A: '))
b = as.integer(readline('Digite outro valor inteiro para B: '))

ifelse (a > b, 'A é maior que B', 'A é menor que B')

# Desafio condicionais em R

# Crie um chatbot simples que pergunte ao usuário sua idade. 
# caso sua idade esteja compreendida entre 18 anos ou menos, retorne: você é uma criança!
# caso sua idade esteja compreendida entre 19  e 50 anos, retorne: você é um adulto!
# caso sua idade esteja compreendida entre 51 anos ou mais, retorne: você é um adulto experiente!

# solução
sua_idade <- as.integer(readline('Digite sua idade: '))

if (sua_idade <= 18) {
  msg <- 'Você é uma criança!'
  print(msg)
} else if (sua_idade <= 51) {
  msg <- 'Você é um adulto!'
  print(msg)
} else {
  msg <- 'Você é um adulto experiente!'
  print(msg)
}

# print(msg)

# outro exemplo
30 -> x

if (x == 30) {
  res <- 'Numero igual a 30'
  res
} else if (x > 30) {
  res <- 'Número maior que 30'
  res
} else {
  res <- 'Número menor que 30'
  res
}

# res


# LAÇOS DE REPETIÇÃO (loops)

# While e For

# sintaxe do while 
# while (condição) {
#   comandos
# }

# exemplo de uso
z <- 10

while (z <= 20) { # z é menor e/ou igual a 20
  # se condição for verdade, o valor de z é impresso a cada iteração até a condição for falsa
  print(z)  
  z <- z + 1
}

# outro exemplo
z <- 5

while (z < 15) {  # z é menor que 15
  # se condição for verdade, o valor de z é atualizado em + 1 até a condição for falsa
  z <- z + 1
  print(z) # imprimindo o valor de z a cada iteração
}

# para finalizar, vamos para mais um exemplo
z <- 8

while (z > 9) { # z é maior que 9
  # se condição for verdade, o valor iterado de z é impresso
  z <- z + 1
  print(z)
}

# perceba que, nada é impresso
# já que a condição não é verdadeira

# sintaxe do for
# for (x in y) {
#   comandos
# }

# exemplo
for (x in 1:15) { # para x de 1 à 15
  print(x)  # imprima x
}

# outro exemplo
for (i in 5:10) {
  print(i)
}

# podemos também definir via entrada teclado
# onde usuário define o início e o fim do laço de repetição
x = as.integer(readline('Digite um número inteiro (início): '))
y = as.integer(readline('Digite um número inteiro (fim): '))

for (i in x:y) {
  print(i)
}

# FUNÇÕES

# Funções nada mais são do que blocos de código “encapsulados” onde você armazena 
# uma lista de instruções e posteriormente, utilizando o nome da função em seu código, 
# você a chama para execução inserindo alguns parâmetros se necessário.

# Temos as funções “R base”, ou seja, aquelas que já são carregadas de forma nativa 
# junto ao R como a função “mean()” que calcula a média, por exemplo, entre outras diversas.

# funções R Base
x = c(11,29,35,47,51,68,70,83,92,104)

# desvio padrão
sd(x)

# média
mean(x)

# mediana
median(x)

# informações estatísticas
summary(x)

# visualizando os quartis
quantile(x)

# Para um exemplo mais prático, vamos instanciar um dataframe,
# usaremos o já conhecido "iris", este dataframe já vem embutido no R

# instanciando o "iris" na variável "df_iris"
df_iris <- iris

# visualizando as 6 primeiras linhas
head(df_iris)

# se preferir, através do parâmetro "n = x" 
# pode definir a quantidade de linhas para ser exibidas
head(df_iris, n = 3)

# visualizando as 6 últimas linhas
tail(df_iris)

# como no "head()", também podemos definir
# quantidade das últimas linhas para exibir
tail(df_iris, n = 10)

# visualizando a quantidade de linhas e colunas
print(nrow(df_iris))  # "nrow" - linhas
print(ncol(df_iris))  # "ncol" - colunas

# nome das colunas
colnames(df_iris)

# índices das linhas
row.names(df_iris)

# dados estatísticos do dataframe
summary(df_iris)

# dados estatíticos de uma coluna específica
summary(df_iris$Sepal.Width)

# visiualizando os quartis de uma coluna específica
quantile(df_iris$Petal.Length)

# Podemos chamar o dataframe "iris" diretamente
# e aplicar nossas análises

head(iris)  # 6 primeiras linhas
tail(iris)  # 6 primeiras linhas

# abre pasta para caminho de arquivos, utilize no RSTUDIO!
file.choose()

# Outro dataframe já no R, temos o "mtcars"
df_cars <- mtcars

# visualizando 6 primeiras linhas
head(df_cars)

# dados estatísticos
summary(df_cars)

# visualizando as correlações entre as variáveis
cor(df_cars)


# CRIAÇÃO DE FUNÇÕES

# Podemos criar nossas próprias funções em R de forma simples e intuitiva.

# cálculo de porcentagem
porcentagem <- function(num, por) {
  num <- as.integer(readline('Digite o número para cálculo: '))
  por <- as.integer(readline('Digite o valor da porcentagem: '))
  
  return(num * por / 100)
}

porcentagem()

# Criamos uma função chamada “porcentagem”. Nela inserimos 2 parâmetros para funcionamento: 
# “num”, que se refere ao número alvo, e 
# “por”, referente a porcentagem a ser calculada. 
# Desta forma utilizamos o “readline()” para pedir os números ao usuário e 
# ao término lhe entregar o calculo de sua porcentagem. 
# Por fim, apenas executamos a função e ela começa a interagir com o usuário.

# vamos pratocar com outros exemplos

# função aritmética - soma
# irar executar a soma de dois números entrada via teclado
# declarando a função
soma <- function(num_1, num_2) {
  num_1 <- as.numeric(readline('Digite o primeiro número: '))
  num_2 <- as.numeric(readline('Digite o segundo número: '))
  
  return(num_1 + num_2)
}

soma()

# função aritmética - raiz quadrada
raiz_quadrada <- function(numero) {
  numero <- as.numeric(readline('Digite o número que deseja saber a raiz quadrada: '))
  return(sqrt(numero))
}

print(raiz_quadrada())

# cálculo da área de um retângulo
area_retangulo <- function(x, y) {
  x <- as.numeric(readline('Digite o valor de x: '))
  y <- as.numeric(readline('Digite o valor de y: '))
  return(x * y)
}

area_retangulo()


# PACOTES

# Pacotes nada mais são que códigos prontos de terceiros, criados para solucionar problemas 
# específicos ao implementar novas funções ao seu código R. 
# Temos pacotes para Machine Learning, Matemática, Web Scraping, Desenvolvimento Web e 
# outros milhares e aqui está o grande trunfo do movimento Open-Source: produção de pacotes 
# em massa.
  
# Onde encontrar pacotes? há 3 formas, via RStudio:
  
# 1. CRAN
# Via linha de comando no próprio console RStudio com:
  # install.packages(“nome-do-pacote”,dependencies=TRUE)

# 2. Manualmente, no CRAN formato .zip ou .tar.gz;
# No menu do Rstudio selecione Menu Tools > Install Packages > Install packages from pacage arquive file e selecione o pacote escolhido.

# 3. No R Studio, na tela 4, em “Packages”: busque, selecione e clique em “install”.

# instalando pacote
install.packages('ggplot2', dependencies = TRUE)

# carrega o pacote para ser utlizado no código
library(ggplot2)

# documentação
# https://github.com/rstudio/cheatsheets/blob/master/data-visualization-2.1.pdf

# Tipo                        Objeto
# dispersão (scatter plot)    geom_point()
# gráfico de bolhas           geom_point()
# histograma                  geom_histogram()
# boxplot                     geom_boxplot
# densidade                   geom_density()
# gráfico de linhas           geom_line()


# TIDYVERSE

# Conjunto de pacotes focados em análise de dados

install.packages('tidyverse')

# instalará: 
# ✔ ggplot2 (gráficos)
# ✔ purrr (programação funcional)
# ✔ tibble (criação dataframes)
# ✔ dplyr (manipulação de dataframes)
# ✔ tidyr (transformação de dataframes)
# ✔ stringr (lida com strings e regex)
# ✔ readr (leitura dados retangulares: csv, tsv...)  
# ✔ forcats (lida com fatores) fatores são estruturas de dados utilizadas para ordenar strings

# Listando todos os datasets presentes no R Base
data(package = .packages(all.available = TRUE))

# ou apenas
data()

# SCATTERPLOT ou gráfico de dispersão
library(tidyverse) # chamando o pacote

# sintaxe de utlização ggplot
# ggplot(data = <DATA>) + 
#   <GEOM_FUNCTION>(mapping = aes(<MAPPING>),
#                   stat = >STAT>,
#                   position = <POSITION>) +
#                   <COORDINATE_FUNCTION> +
#                   <FACET_FUNCTION> # dividir o gráfico em subplots

# displ: o tamanho do motor de um carro, me litros
# hwy: a eficiência de combustível de um carro na estrada, em milhas por galão (mpg).
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                            y = hwy))

# exibindo a variável "mpg"
mpg

# GRÁFICO DE BARRAS
ggplot(diamonds, aes(x = cut)) + 
  geom_bar()


# DPLYR

# link da documentação
# https://github.com/rstudio/cheatsheets/blob/master/data-transformation.pdf

# Pacote mais utilizado para transformação de dados.
# Funções principais:

# Função        Objetivo
# filter()      filtra linhas
# select()      seleciona colunas
# mutate()      cria/modifica colunas
# arrange()     ordena a base
# summarise()   sumarize a base

library(dplyr) # chamando o pacote

# usaremos o dataframe "mtcars"

# usando a função PIPE
mtcars %>%  
  filter(mpg > 20)  # filtrando o dataframe em uma coluna específica e aplicando uma condicional - mpg maior que 20


mtcars %>%  
  select(mpg) # selecionando somente a coluna "mpg"

mtcars %>%
  # usando a função "mutate()" e criando uma nova coluna "economy"
  mutate (
    economy = ifelse (
      mpg > 20, 'CARRO ECONÔMICO', 'CARRO BRBERÃO') # aplicando uma condicional e instanciando uma descrição
    ) %>%
      select(mpg, economy) # selecionando as colunas "mpg" e "economy"

mtcars %>%
  # "arrange()" ordena as linhas de um quadro de dados pelos valores das colunas selecionadas
  arrange(mpg) %>%
  select(everything())   # com a função "select()" selecionando todas as colunas com o argumento "everything()"

mtcars %>%
  # "arrange()"" ordena as linhas de um quadro de dados pelos valores das colunas selecionadas
  arrange(hp) %>%
  select(hp, mpg) # com a função "select()" selecionando as colunas "hp" e "mpg"

mtcars %>%
  # com a função "summarise()", estamos sumarizando 
  # instanciando na variável "media_mpg", a média de consumo (mpg)
  summarise(media_mpg = mean(mpg, 
                               na.rm = TRUE))


# TIBBLE

# Tibbles são como dataframes, entretanto, apresentam melhorias de produtividade.


# TIDYR

# funções principais: gather() e spread()


# chamando os pacotes
library(tibble)
library(tidyr)

# instanciando manualmente um dataframe usando o "tibble"
df <- tibble(w = 1, x = 2, y = 3) # variáveis e seus respectivos valores
z = gather(df, 'variável', 'valor') # concatenando do df com nome da colunas, utilizando o gather e salvando na variável "z"
z # imprimindo o objeto criado "z"

# visualizando a classe da objeto criado
class(z)

# visualizando o df
df

z2 = spread(z, 'variável', 'valor')
z2

# exibindo em formato de tabela o objeto "z2"
View(z2)

# outro exemplo
# chamando os pacotes necessários
library(tibble)
library(tidyr)

# instanciando manualmente um dataframe
df_2 <- tibble('Fernando' = 1997,
               'Kátia' = 1980,
               'Sara' = 2000,
               'Eloah' = 2007)  # variáveis e seus respectivos valores

dados = gather(df_2, 'nome', 'ano') # nome da colunas
View(dados)

nome_ano = spread(dados, 'nome', 'ano')
nome_ano

View(nome_ano)
  

# STRINGR

# ideal para trabalhar com string

# chamando o pacote
library(stringr)

# contando os caracteres na variável "texto"
texto = 'Este é um texto para simples conferência de caracteres.'
str_length(texto)

# colocando toda variável em caixa alta
str_to_upper(texto)

# variável em caixa baixa
str_to_lower(c('FERNANDO GALVÃO'))

# variáveis com as iniciais em caixa alta
var_1 <- 'data science'
str_to_title(c(var_1))

# exemplo
s1 = 'Estou desenvolvendo'
s2 = ' '
s3 = 'habilidades em Ciência de Dados'

str_c(s1, s2, s3) # concatenando as variáveis

# outro exemplo
var1 <- 'A linguagem R'
var2 <- ' '
var3 <- 'é poderosa'
var4 <- '!'

str_c(var1, var2, var3, var4)

# exemplo
'Fernando' -> firstName
' ' -> space 
'Galvão' -> lastName

fullName <- str_c(firstName, space, lastName)
print(fullName)

'fernando' -> firstName
' ' -> space
'galvão' -> lastName

fullName <- str_c(firstName,
                  space,
                  lastName)

str_to_title(fullName)


# READR

# Realiza leitura de dados nos formatos .txt, .csv, .fwf e .log, 10x mais veloz que os 
# comandos usuais.
# Não há necessidade de converter caracteres em fatores(stringAsFactors = FALSE) 

# Segue os tipos de dados que realiza a leitura:
  # read_delim(), read_csv(), read_tsv(), 
  # read_csv2(), read_fwf(), read_table(), 
  # read_log(), read_file() # lê um arquivo em uma *string*.

# link da documentação
# https://rawgit.com/rstudio/cheatsheets/master/data-import.pdf

library(readr)


# Operador Pipe %>%

# O operador %>% (pipe) veio para tornar a leitura de códigos mais legível/compreensível. 
# Foi introduzido junto ao pacote magrittr e já existem outros pacotes criados 
# para sua utilização

# De inicio, vamos instalar e carregar o magrittr:
install.packages('magrittr')

# chamando o pacote
library(magrittr)

# funcao(a, b)  # sem pipe

# a %>% f(b) # operador pipe

# instanciando alguns dados numéricos na variável "a"
a <- c(3,7,6)

# raiz quadrada sem uso do pipe
sqrt(sum(a))

# raiz quadrada com uso do pipe
a %>% sum()

# instanciando quatro valores
valores <- c(43, 39, 21, 13)

# somando os valores e gerando a média
sum(mean(valores)) # sem o uso do pipe

# somando os valores e gerando a média
valores %>% mean() %>% sum() # com uso do pipe

# entrada dos dados via teclado
v_1 <- as.numeric(readline('Digite o primeiro valor: '))
v_2 <- as.numeric(readline('Digite o segundo valor: '))
v_3 <- as.numeric(readline('Digite o terceiro valor: '))
v_4 <- as.numeric(readline('Digite o quarto valor: '))

media <- c(v_1, v_2, v_3, v_4)      # instanciando os valores na variável "media"
media %>% mean() %>% sum()          # utilizando o pipe para gerar o resultado - imprimindo a média dos valores
print(media %>% mean() %>% sum())   # utilizando o pipe para gerar o resultado - imprimindo a média dos valores

# entrada dos dados via teclado
v_1 <- as.numeric(readline('Digite o primeiro valor: '))
v_2 <- as.numeric(readline('Digite o segundo valor: '))
v_3 <- as.numeric(readline('Digite o terceiro valor: '))
v_4 <- as.numeric(readline('Digite o quarto valor: '))

# código simplificado - utilizando o pipe para gerar o resultado
sum(c(v_1, v_2, v_3, v_4) %>% mean())           # imprimindo a média dos valores
print(sum(c(v_1, v_2, v_3, v_4) %>% mean()))    # imprimindo a média dos valores
