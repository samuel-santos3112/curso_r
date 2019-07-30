#install.packages("tidyverse") # Instalar o pacote "tidyverse"
library(tidyverse) # Carregar o pacote "tidyverse"

#Pesquisar citações sobre a função, por exemplo quem a criou e quando.
citation("tidyverse")


#Operadores matemáticos básicos
1 + 2 # Adição
3 - 1 # Subtração
2 * 2 # Multiplicação
1 / 4 # Divisão



#Operadores lógicos
2+2==4 # 2 + 2 é igual a 4?
2+2==5 # 2 + 2 é igual a 5? 
2+2&1+3==4 # 2 + 2 e 1 + 3 são iguais a 4?
2+2|1+4==5 # 2 + 2 ou 1 + 4 são iguais a 5?


#Operador lógico em vetor
c(2+2,1+4)==5 # 2 + 2 é igual a.---* 5? 1 + 4 é igual a 5?


#Funções nativas
sum(1,2) # Adição
prod(2,2) # Multiplicação


#Criando uma função
# Função para somar dois valores
somar <- 
  
  # Abrir argumento para criação de função e informar dentro dos parenteses os parâmetros
  function(x,y){
    
    # Construir a operação de soma
    z = x + y
    
    # Retornar o resultado
    
    return(z)
    
  }
#Aplicar a função
somar(2,4)



#Tipos de dados
x <- 1L # inteiro
class(x)
x <- 1 # numérico
class(x) 
x <- 8i # complexo
class(x)
x <- TRUE # lógico
class(x)
x <- "hello" # character
class(x)


x <- c(1,2,3) # Vetor numérico
typeof(x) # Checar o método de armazenagem
class(x) # Checar a classe
length(x) # Checar o tamanho
str(x) # Checar a estrutura


#Conversão de dados
x <- 1:10
class(x)
as.numeric(x)
as.logical(x)
as.character(x)


#Matrizes
x <- matrix(ncol = 2,nrow = 2) # Criar uma matriz  2 x 2
dim(x) # Checar as dimensões da matriz
x[,] <- c(1,7,9,6) # Atribuir valores à matriz
x <- 1:3 # Contruir um vetor x
y <- 10:12 # Construir um vetor z
z <- cbind(x,y) # Montar uma matriz a partir destes vetores (por colunas)
z <- rbind(x,y) # Montar uma matriz a partir destes vetores (por linhas)



psych::describe(c(1,2)) # Utilizando a função describe, do pacote "psych", sem carregá-lo

#Operações com matrizes
m <- matrix(1:4,ncol = 2,nrow = 2) # Construir a matriz m
n <- matrix(5:8,ncol = 2,nrow = 2) # Construir a matriz n
t(m)      # matriz transposta de m
m %*% n   # multiplicação matricial de m por n
solve(m)  # matriz inversa de m


#Listas
lista <- list(1,"galo",2i,2.61,TRUE,matrix(1:4)) # Criar uma lista
lista # Checar a lista criada
lista[[2]] # Acessar o segundo elemento da lista
lista <- list(a=1,b="galo",c=2i,d=2.61,e=TRUE,f=matrix(1:4)) # Criar uma lista, com nomes dos elementos


#Função factor
# Construir um fator, com opção para mander a ordem data
x <- factor(c("sim","sim","sim","não","sim","não"),levels = c("não","sim")) 
table(x) # Tabular os dados
levels(x) # Verificar os níveis dos fatores



1/Inf # Divisão de 1 por infinito
-1/0 # Infinito - divisão de 1 por zero (conceito de limite)
1/0-1/0 # Infinito menos infinito - Indefinido (não numérico)
x <- NA # Missing value (valor ausente)
x <- NULL # Vazio

#Condições if else
# Criar um objeto com x com o valor 2
x <- 2
# Realizar uma soma se x é igual 2
if(x==2){
  
  x+2
  
}
# Realizar uma soma se x é igual a 3
if(x==3){
  
  x+2
  
}


# Atribuir o valor 8 à x
x <- 8
# Testar se x é positivo ou negativo
if(x < 0) {
  
  "negativo"
  
} else if(x == 0) {
  
  "zero"
  
} else if(x > 0) {
  
  "positivo"
}


#Laço de repetição for
# Criar uma lista de índices
i <- 1:10
# Somar 1 aos valores de 5 a 10
for(i in c(5:10)){
  
  print(i+1)
  
}


#Laço de repetição while
x <- 1
while (x<=10) {
  
  print (x)
  x=x+2
  
}


#x <- c(1:10) # Criar o vetor numérico
round(sqrt(sum(x))) # Calcular a raíz quadrada da soma do vetor x, arredondando o resultado

#Criando função acima com operador pipe
x <- c(1:10)
x %>% sum %>% sqrt %>% round


#Onde encontrar ajuda
?psych::describe
help("describe")
help(describe)
?psych
help("psych")
help(psych)

#Ajuda mais ampla
??psych
help.search("psych")

#Ajuda pela internet
RSiteSearch("psych") # Pesquisar um termo

#Para acessar o código de uma função, posicione o cursor sobre a função e tecle F2. Você pode acessar a função rodando somente o nome da função.
psych::describe


#Quando se tem uma função que tem vários metodos, usa-se a função methods para mostrar todos os métodos 
methods(mean)
mean.default
mean.difftime

#Para consultar uma função em qualquer pacote do R, utilize a função getAnywhere.
getAnywhere(describe)
getAnywhere(describe)[1]


#Carregar a base da PDAD import base
 `pdad_2018_moradores.(1)` <- read.csv2("~/curso_r/pdad_2018_moradores (1).csv", stringsAsFactors=FALSE)
  View(`pdad_2018_moradores.(1)`)
  
#Carregar a base por url
   `pdad_2018_moradores.(1)` <- read.csv2("~/curso_r/pdad_2018_moradores (1).csv", stringsAsFactors=FALSE)
     View(`pdad_2018_moradores.(1)`)
   `pdad_2018_moradores.(1)` <- read.csv2("~/curso_r/pdad_2018_moradores (1).csv", stringsAsFactors=FALSE)
     View(`pdad_2018_moradores.(1)`)
   library(readr)
   pdad_2018_moradores <- read_delim("http://www.codeplan.df.gov.br/wp-content/uploads/2019/06/pdad_2018_moradores.csv", )

                                     
rm(pdad_2018_moradores) # Remove apenas o objeto "pdad_2018_moradores"
rm(list=ls()) # Remove todos os objetos do ambiente                                            
                                     

getwd() # Consultar diretório de trabalho ativo                 


#Carregando base de dados com data table e mais rapidamente
# Carregar o pacote
library(data.table)

# Carregar a base de um link da internet.
pdad_2018_moradores <- data.table::fread("http://www.codeplan.df.gov.br/wp-content/uploads/2019/06/pdad_2018_moradores.csv",dec = ",",encoding = "Latin-1")

# Carregar a base de um arquivo local
pdad_2018_moradores <- data.table::fread("dados/pdad_2018_moradores.csv",
                                         dec = ",",encoding = "Latin-1")

#Carregando a base de dados por meio do banco de dados
# Carregar pacote
library(RODBC)
# Abrir conexão com o banco de dados
db <- RODBC::odbcConnect("db_codeplan", uid="codeplan", pwd="codeplan")



# Verificar as tabelas disponíveis no banco de dados
tabelas <- RODBC::sqlTables(db)


#View(tabelas) # Visualizar o objeto tabelas
class(tabelas) # Verificar a classe do objeto
names(tabelas) # Verificar o nome das colunas carregadas
head(tabelas) # Verificar as primeiras linhas da tabela
tail(tabelas) # Verificar as últimas linhas da tabela
str(tabelas) # Verificar as classes das colunas
dplyr::glimpse(tabelas) # Outra opção para checar as classes
nrow(tabelas) # Consultar o número de linhas
ncol(tabelas) # Consultar o número de colunas



tabelas$TABLE_SCHEM # Consultar apenas a coluna "TABLE_SCHEM"
tabelas[,2] # Outra maneira de consultar a coluna "TABLE_SCHEM"
tabelas[,"TABLE_SCHEM"] # Mais uma maneira de consultar a coluna "TABLE_SCHEM"
tabelas[1:2,1:2] # Selecionar apenas as duas primeiras linhas e colunas
tabelas[1:2,]$TABLE_SCHEM # Selecionar apenas as duas primeiras linhas da coluna "TABLE_SCHEM"
tabelas[c(1,7,10:12),c(1,3)] # Selecionar linhar e colunas distintas


table(tabelas$TABLE_SCHEM) # Tabular a coluna
table(tabelas[,2]) # Tabular a coluna
table(tabelas[,"TABLE_SCHEM"]) # Tabular a coluna


#Select por filtro
tabelas[tabelas$TABLE_SCHEM=="pdad",3]
tabelas[tabelas[,2]=='pdad',]$TABLE_NAME



# Carregar o pacote dplyr
library(dplyr)
# Consultar as tabelas disponíveis
RODBC::sqlTables(db) %>%
  # Filtrar apenas linhas do esquema PDAD
  dplyr::filter(TABLE_SCHEM=="pdad") %>%
  # Selecionar apenas a coluna com as tabelas
  dplyr::select(TABLE_NAME)


# Alterar o nome da coluna "TABLE_SCHEM" para Esquema
colnames(tabelas)[2] <- "Esquema"
names(tabelas)[2] <- "Esquema"
# Verificar o resultado
names(tabelas)
# Alterar o nome com o dplyr
RODBC::sqlTables(db) %>%
  # Filtrar apenas linhas do esquema PDAD
  dplyr::filter(TABLE_SCHEM=="pdad") %>%
  # Alterar os nomes das colunas
  dplyr::rename(Nome=TABLE_NAME,
                Banco=TABLE_CAT,
                Esquema=TABLE_SCHEM,
                Tipo=TABLE_TYPE,
                Observações=REMARKS)



# Consultar as tabelas disponíveis
RODBC::sqlTables(db) %>%
  # Filtrar apenas linhas do esquema PDAD
  dplyr::filter(stringr::str_detect(TABLE_SCHEM, pattern =  "pdad")) %>%
  # Selecionar apenas a coluna com as tabelas
  dplyr::select(TABLE_NAME)



# Consultar colunas
colunas <- RODBC::sqlColumns(db,"pdad.mor2018")


# Carregar a base de moradores da PDAD 2018
pdad_2018_moradores <- RODBC::sqlQuery(db,"select A01ra from pdad.mor2018")


# Conexão ao banco de dados com o pacote DBI
db <- DBI::dbConnect(odbc::odbc(), "db_codeplan",uid=("codeplan"),pwd=("codeplan"))
