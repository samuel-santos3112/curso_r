#install.packages("tidyverse") # Instalar o pacote "tidyverse"
library(tidyverse) # Carregar o pacote "tidyverse"

# Pesquisar citações sobre a função, por exemplo quem a criou e quando.
citation("tidyverse")


# Operadores matemáticos básicos
1 + 2 # Adição
3 - 1 # Subtração
2 * 2 # Multiplicação
1 / 4 # Divisão



# Operadores lógicos
2+2==4 # 2 + 2 é igual a 4?
2+2==5 # 2 + 2 é igual a 5? 
2+2&1+3==4 # 2 + 2 e 1 + 3 são iguais a 4?
2+2|1+4==5 # 2 + 2 ou 1 + 4 são iguais a 5?


# Operador lógico em vetor
c(2+2,1+4)==5 # 2 + 2 é igual a.---* 5? 1 + 4 é igual a 5?


# Funções nativas
sum(1,2) # Adição
prod(2,2) # Multiplicação


# Criando uma função
# Função para somar dois valores
somar <- 
  
  # Abrir argumento para criação de função e informar dentro dos parenteses os parâmetros
  function(x,y){
    
    # Construir a operação de soma
    z = x + y
    
    # Retornar o resultado
    
    return(z)
    
  }
# Aplicar a função
somar(2,4)



# Tipos de dados
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


# Conversão de dados
x <- 1:10
class(x)
as.numeric(x)
as.logical(x)
as.character(x)


# Matrizes
x <- matrix(ncol = 2,nrow = 2) # Criar uma matriz  2 x 2
dim(x) # Checar as dimensões da matriz
x[,] <- c(1,7,9,6) # Atribuir valores à matriz
x <- 1:3 # Contruir um vetor x
y <- 10:12 # Construir um vetor z
z <- cbind(x,y) # Montar uma matriz a partir destes vetores (por colunas)
z <- rbind(x,y) # Montar uma matriz a partir destes vetores (por linhas)



psych::describe(c(1,2)) # Utilizando a função describe, do pacote "psych", sem carregá-lo

# Operações com matrizes
m <- matrix(1:4,ncol = 2,nrow = 2) # Construir a matriz m
n <- matrix(5:8,ncol = 2,nrow = 2) # Construir a matriz n
t(m)      # matriz transposta de m
m %*% n   # multiplicação matricial de m por n
solve(m)  # matriz inversa de m


# Listas
lista <- list(1,"galo",2i,2.61,TRUE,matrix(1:4)) # Criar uma lista
lista # Checar a lista criada
lista[[2]] # Acessar o segundo elemento da lista
lista <- list(a=1,b="galo",c=2i,d=2.61,e=TRUE,f=matrix(1:4)) # Criar uma lista, com nomes dos elementos


# Função factor
# Construir um fator, com opção para mander a ordem data
x <- factor(c("sim","sim","sim","não","sim","não"),levels = c("não","sim")) 
table(x) # Tabular os dados
levels(x) # Verificar os níveis dos fatores



1/Inf # Divisão de 1 por infinito
-1/0 # Infinito - divisão de 1 por zero (conceito de limite)
1/0-1/0 # Infinito menos infinito - Indefinido (não numérico)
x <- NA # Missing value (valor ausente)
x <- NULL # Vazio

# Condições if else
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


# Laço de repetição for
# Criar uma lista de índices
i <- 1:10
# Somar 1 aos valores de 5 a 10
for(i in c(5:10)){
  
  print(i+1)
  
}


# Laço de repetição while
x <- 1
while (x<=10) {
  
  print (x)
  x=x+2
  
}


# x <- c(1:10) # Criar o vetor numérico
round(sqrt(sum(x))) # Calcular a raíz quadrada da soma do vetor x, arredondando o resultado

# Criando função acima com operador pipe
x <- c(1:10)
x %>% sum %>% sqrt %>% round


# Onde encontrar ajuda
?psych::describe
help("describe")
help(describe)
?psych
help("psych")
help(psych)

# Ajuda mais ampla
??psych
help.search("psych")

# Ajuda pela internet
RSiteSearch("psych") # Pesquisar um termo

# Para acessar o código de uma função, posicione o cursor sobre a função e tecle F2. Você pode acessar a função rodando somente o nome da função.
psych::describe


# Quando se tem uma função que tem vários metodos, usa-se a função methods para mostrar todos os métodos 
methods(mean)
mean.default
mean.difftime

# Para consultar uma função em qualquer pacote do R, utilize a função getAnywhere.
getAnywhere(describe)
getAnywhere(describe)[1]


# Carregar a base da PDAD import base
 `pdad_2018_moradores.(1)` <- read.csv2("~/curso_r/pdad_2018_moradores (1).csv", stringsAsFactors=FALSE)
  View(`pdad_2018_moradores.(1)`)
  
# Carregar a base por url
   `pdad_2018_moradores.(1)` <- read.csv2("~/curso_r/pdad_2018_moradores (1).csv", stringsAsFactors=FALSE)
     View(`pdad_2018_moradores.(1)`)
   `pdad_2018_moradores.(1)` <- read.csv2("~/curso_r/pdad_2018_moradores (1).csv", stringsAsFactors=FALSE)
     View(`pdad_2018_moradores.(1)`)
   library(readr)
   pdad_2018_moradores <- read_delim("http://www.codeplan.df.gov.br/wp-content/uploads/2019/06/pdad_2018_moradores.csv", )

                                     
rm(pdad_2018_moradores) # Remove apenas o objeto "pdad_2018_moradores"
rm(list=ls()) # Remove todos os objetos do ambiente                                            
                                     

getwd() # Consultar diretório de trabalho ativo                 


# Carregando base de dados com data table e mais rapidamente
# Carregar o pacote
library(data.table)

# Carregar a base de um link da internet.
pdad_2018_moradores <- data.table::fread("http://www.codeplan.df.gov.br/wp-content/uploads/2019/06/pdad_2018_moradores.csv",dec = ",",encoding = "Latin-1")

# Carregar a base de um arquivo local
pdad_2018_moradores <- data.table::fread("dados/pdad_2018_moradores.csv",
                                         dec = ",",encoding = "Latin-1")

# Carregando a base de dados por meio do banco de dados
# Carregar pacote
library(RODBC)
# Abrir conexão com o banco de dados
db <- RODBC::odbcConnect("db_codeplan", uid="codeplan", pwd="codeplan")



# Verificar as tabelas disponíveis no banco de dados
tabelas <- RODBC::sqlTables(db)


# View(tabelas) # Visualizar o objeto tabelas
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



db <- DBI::dbConnect(odbc::odbc(), "db_codeplan",uid="codeplan",pwd="codeplan")


pdad_2018_moradores <- DBI::dbGetQuery(db,"select A01ra from pdad.mor2018")

# Tabular a amostra por RA
table(pdad_2018_moradores$A01ra)


# Listar os arquivos do diretório dados
list.files()
# Carregar as informações do dicionário
dic_moradores <- readxl::read_excel("Dicionário_de_Variáveis_PDAD_2018 (2).xlsx",
                                    skip = 1,
                                    sheet = 2)


pdad_2018_moradores <- DBI::dbGetQuery(db,"select * from pdad.mor2018")



# Carregar o pacote
library(Hmisc)
# Criar um objeto com os rótulos
var.labels <- dic_moradores$`Descrição da coluna` %>%
  # Retirar as linhas ausentes
  na.omit
# Nomear esses rótulos com o nome das variáveis do nosso banco de dados  
names(var.labels) <- names(pdad_2018_moradores)
# Adicionar os rótulos ao nosso banco de dados
pdad_2018_moradores <- Hmisc::upData(pdad_2018_moradores, labels = var.labels)
# Verificar o resultado
Hmisc::describe(pdad_2018_moradores)



RA <- pdad_2018_moradores %>%
  dplyr::transmute(RA=factor(A01ra,
                             levels=1:31,
                             labels=c('Plano Piloto',      
                                      'Gama',
                                      'Taguatinga',
                                      'Brazlândia',
                                      'Sobradinho',
                                      'Planaltina',
                                      'Paranoá',
                                      'Núcleo Bandeirante',
                                      'Ceilândia',
                                      'Guará',
                                      'Cruzeiro',
                                      'Samambaia',
                                      'Santa Maria',
                                      'São Sebastião',
                                      'Recanto das Emas',
                                      'Lago Sul',
                                      'Riacho Fundo',
                                      'Lago Norte',
                                      'Candangolândia',
                                      'Águas Claras',
                                      'Riacho Fundo II',
                                      'Sudoeste/Octogonal',
                                      'Varjão',
                                      'Park Way',
                                      'SCIA-Estrutural',
                                      'Sobradinho II',
                                      'Jardim Botânico',
                                      'Itapoã',
                                      'SIA',
                                      'Vicente Pires',
                                      'Fercal')))
# Tabular os resultados
table(RA$RA)



# Mesma operação que a de cima sem ter que escrever os nomes.
# Filtrar somente as informações da coluna RA
ra <- data.frame(rotulo=dic_moradores[2:32,]$Valor,
                 RA=dic_moradores[2:32,]$`Descrição do valor`)

# Recodificar os nomes
ra_codificada <- pdad_2018_moradores %>%
  dplyr::transmute(ra=factor(A01ra,
                             levels = ra$rotulo,
                             labels = ra$RA))

# Tabular os resultados
table(ra_codificada$ra)



# Gerando um gráfico com os dados do objeto RA
RA %>%
  # Criar a área de plotagem, com o eixo X
  ggplot(aes(x=RA)) +
  # Inserir a geometrica do tipo "Barra", com a opção de contagem (gerada automaticamente no eixo y)
  geom_bar(stat = "count") +
  # Inverter os eixos
  coord_flip()


# Gerar um gráfico com os dados com mais funcionalidades
# Contar quantas pessoas foram amostradas em cada RA
RA %>%
  # Contar quantas observações temos em cada RA
  dplyr::count(RA) %>%
  # Plotar o gráfico, ajustando as categorias de acordo com o total amostrado
  ggplot(aes(x=forcats::fct_reorder(RA,n),y=n)) +
  # Desenhar a geometria de barras
  geom_bar(stat = "identity") +
  # Inverter os eixos
  coord_flip() +
  # Rotular os eixos
  labs(y="Amostra",
       x="Região Administrativa")


# Pacote com outro outro modelo de gráfico
ggthemr::ggthemr()



# Alterando todos os registros de Plano para planos.
gsub("Plano","Planos",RA$RA)


# Objeto com base de domicílios 
pdad_2018_domicilios <- DBI::dbGetQuery(db,"select * from pdad.dom2018")


# Verificar as primeiras informações da coluna datavisita
head(pdad_2018_domicilios$datavisita)


# Verificar a classe da coluna datavisita
class(pdad_2018_domicilios$datavisita)


# Carregar pacote lubridate
library(lubridate)

# Utilizar a base de domicílios
pdad_2018_domicilios %>%
  # Selecionar a data da pesquisa
  dplyr::select(datavisita) %>%
  # Transformar o campo de data (em caracter) em data (formato data)
  dplyr::mutate(datavisita=lubridate::mdy(datavisita),
                # Extrair o valor do mês
                MES=lubridate::month(datavisita,label=T)) %>%
  # Agrupar por mÊs e contar a quantidade de casos por mÊs
  dplyr::count(MES) 


# Criar uma variável com o nome das RAs na base de domicílios
pdad_2018_domicilios <- pdad_2018_domicilios %>%
  dplyr::mutate(RA=factor(A01ra,
                          levels=1:31,
                          labels=c('Plano Piloto',      
                                   'Gama',
                                   'Taguatinga',
                                   'Brazlândia',
                                   'Sobradinho',
                                   'Planaltina',
                                   'Paranoá',
                                   'Núcleo Bandeirante',
                                   'Ceilândia',
                                   'Guará',
                                   'Cruzeiro',
                                   'Samambaia',
                                   'Santa Maria',
                                   'São Sebastião',
                                   'Recanto das Emas',
                                   'Lago Sul',
                                   'Riacho Fundo',
                                   'Lago Norte',
                                   'Candangolândia',
                                   'Águas Claras',
                                   'Riacho Fundo II',
                                   'Sudoeste/Octogonal',
                                   'Varjão',
                                   'Park Way',
                                   'SCIA-Estrutural',
                                   'Sobradinho II',
                                   'Jardim Botânico',
                                   'Itapoã',
                                   'SIA',
                                   'Vicente Pires',
                                   'Fercal')))


coleta <-
  # Utilizar a base de domicílios
  pdad_2018_domicilios %>%
  # Selecionar a data da pesquisa
  dplyr::select(RA,datavisita) %>%
  # Transformar o campo de data (em caracter) em data (formato data)
  dplyr::mutate(datavisita=lubridate::mdy(datavisita),
                # Extrair o valor do mês
                MES=lubridate::month(datavisita,label=T)) %>%
  # Agrupar e contar por RA e por  Mês
  dplyr::count(RA,MES)

# Visualizar resultado
#View(coleta)


# Gravando arquivo csv
write.table(coleta,"coleta.csv",
            row.names = F, sep = ";",
            fileEncoding = "latin1")


# Operações com datas.
# Criar um objeto com a data de referência da pesquisa
ref <- lubridate::dmy("15-07-2018")

# Armazenar o resultado em um objeto
referencias <- 
  # Utilizar a base de domicílios
  pdad_2018_domicilios %>%
  # Selecionar a data da pesquisa
  dplyr::select(datavisita) %>%
  # Transformar o campo de data (em caracter) em data (formato data)
  dplyr::mutate(datavisita=lubridate::mdy(datavisita),
                # Calcular a diferença entre as datas, em meses
                dif_data_mes=interval(ref,datavisita) %/% months(1),
                # Calcular a diferença entre as datas, em dias
                dif_data_dia=interval(ref,datavisita) %/% days(1))



# Gerando gráfico de densidade
# Utilizar o objeto de referências
referencias %>%
  # Criar um plot com a diferença de dias no eixo x
  ggplot(aes(x=dif_data_dia)) +
  # Fazer o gráfico de densidade
  geom_density() +
  # Adicionar uma linha vermelha vertical no ponto zero
  geom_vline(aes(xintercept= 0), color="red")+
  # Nomear os eixos
  labs(y="Densidade",
       x="Diferença de dias da pesquisa")


library(RPostgreSQL)
library(postGIStools)
library(ggrepel)
library(sf)
library(rgdal)


RA <- readRDS("/u02/u36072/curso_r/RA.rda")

db_geo <- DBI::dbConnect(PostgreSQL(),
                         dbname = "nucleo_geo", 
                         user = "publico",
                         host = "10.233.35.2",
                         password = "codeplan2019")

# RA <- postGIStools::get_postgis_query(db_geo, "SELECT * FROM nivel_territorial.tb_ra_pdad_2018 ",
#                                       geom_name = "geom")

pontos <- fortify(RA) %>%
  dplyr::group_by(id) %>%
  dplyr::summarise(lat=mean(lat),
                   long=mean(long)) %>%
  dplyr::mutate(id=as.integer(id))

RA <- sf::st_as_sf(RA)

pdad_mor<- DBI::dbGetQuery(db,"select A01ra, FATOR_PROJ from pdad.mor2018") %>%
  dplyr::group_by(A01ra) %>%
  dplyr::summarise(n=sum(FATOR_PROJ)) 

map<-
  RA %>%
  dplyr::left_join(pdad_mor,
  by=c("ra_num"="A01ra")) %>%
  dplyr::left_join(pontos) %>%
  dplyr::mutate(nome2=factor(ra_num,
                             levels=sort(RA$ra_num),
                             labels=c('Plano Piloto',      
                                      'Gama',
                                      'Taguatinga',
                                      'Brazlândia',
                                      'Sobradinho',
                                      'Planaltina',
                                      'Paranoá',
                                      'Núcleo Bandeirante',
                                      'Ceilândia',
                                      'Guará',
                                      'Cruzeiro',
                                      'Samambaia',
                                      'Santa Maria',
                                      'São Sebastião',
                                      'Recanto das Emas',
                                      'Lago Sul',
                                      'Riacho Fundo',
                                      'Lago Norte',
                                      'Candangolândia',
                                      'Águas Claras',
                                      'Riacho Fundo II',
                                      'Sudoeste/Octogonal',
                                      'Varjão',
                                      'Park Way',
                                      'SCIA-Estrutural',
                                      'Sobradinho II',
                                      'Jardim Botânico',
                                      'Itapoã',
                                      'SIA',
                                      'Vicente Pires',
                                      'Fercal'))) %>%
  ggplot()+
  geom_sf(aes(fill = n)) +
  # muda escala de cores
  scale_fill_distiller(palette="Blues",
                       name="População",
                       labels= scales::unit_format(unit = "Mil", scale = 1e-3),
                       direction = 1) +
  # tira sistema cartesiano
  theme(panel.grid = element_line(colour = "transparent"),
        panel.background = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        legend.title = element_text(size = 14),
        legend.text = element_text(size = 12)) +
  #geom_text(aes(long, lat, label = nome), colour = "white")+
  geom_label_repel(aes(long, lat, label = nome2),size=5, fontface="bold", family="Arial",
                   label.padding=unit(0.10,"line")) +
  labs(x="",y="") 


#Mostrar objeto MAP
map

ggsave(map,filename = "mapa_pop.png",
       bg = "transparent",
       width = 30, 
       height = 18, 
       units = "cm")


# Carregar pacote sidrar
library(sidrar)

# Carregar a inflação mensal do DF em um objeto
inflacao <- sidrar::get_sidra(api = '/t/1419/n6/5300108/v/63/p/all/c315/7169/d/v63%202')

# Guardar os inflatores em um objeto
inflacao_df <- inflacao %>%
  # Filtrar para o mês de início da PDAD
  dplyr::filter(`Mês (Código)`>=201803) %>%
  # Organizar dados em ordem cronológica decrescente
  dplyr::arrange(desc(`Mês (Código)`)) %>%
  # Calular o inflator, acumulando os índices mensais
  dplyr::mutate(inflator=cumprod(Valor/100+1)) %>%
  # Selecionar a referência e o inflator calculado
  dplyr::select(`Mês (Código)`,inflator) %>%
  # Criar uma variável para o mes e para o ano do inflator,
  # necessária para cruzar com as informações da PDAD,
  # mantendo a variável de inflator no objeto
  dplyr::transmute(mes=as.numeric(substr(`Mês (Código)`,5,6)),
                   ano=as.numeric(substr(`Mês (Código)`,1,4)),
                   inflator=inflator)



# Carregar informações da inflação para as localidades desejadas
inflacao <- sidrar::get_sidra(api = '/t/1419/n1/all/n7/3301,3501/n6/5300108/v/63/p/all/c315/7169/d/v63%202')

# Gravar a inflação transformada em um objeto  
inflacao_wide <- inflacao %>%
  # Selecionar as variáveis de interesse
  dplyr::select(`Mês (Código)`,`Brasil, Região Metropolitana e Município`,Valor) %>%
  # Renomear as variáveis selecionadas anteriormente
  dplyr::rename_all(list(~c("referencia","Local","Valor"))) %>%
  # Mudar dados para o formato wide.
  tidyr::spread(Local,Valor)




# Criar um objeto com os dados no formato long
inflacao_long <- inflacao_wide %>%
  # Passar as colunas de cada localidade para o formato long, criando
  # as variáveis "Local" e "Valor" para receberem os dados de inflação
  tidyr::gather("Local","Valor",-1)

inflacao_long %>%
  # Ajustar a variável de referência para o formato data,
  # utilizando as informações de mês e ano, acrescentando
  # o dia primeiro, apenas como referência
  dplyr::mutate(referencia=lubridate::dmy(paste("01",
                                                stringr::str_sub(referencia,5,6),
                                                stringr::str_sub(referencia,1,4)))) %>%
  # Filtrar para o último ano (de maio a maio)
  dplyr::filter(referencia>=lubridate::dmy("01-05-2018")) %>%
  # Plotar o gráfico, com a referência no eixo x,
  # a inflação no eixo y e a localidade colorindo as linhas
  ggplot(aes(x=referencia,y=Valor,colour=Local))+
  # Construir as linhas, variando o tipo de linha conforme o local
  geom_line(aes(linetype = Local))+
  # Adicionar os pontos
  geom_point()+
  # Ajustar os rótulos dos meses do eixo x, apresentando-os
  # a cada dois meses
  scale_x_date(date_breaks = "2 month")+
  # Ajustar a legenda das cores, atribuindo cores específicas para as linhas
  scale_colour_manual(labels=c("Brasil","Distrito Federal",
                               "Rio de Janeiro","São Paulo"),
                      values=c("cadetblue4","coral4",
                               "darkgoldenrod","chartreuse4"))+
  # Ajustar a legenda das linhas, combinando com a legenda anterior
  scale_linetype_manual(labels=c("Brasil","Distrito Federal",
                                 "Rio de Janeiro","São Paulo"),
                        values=c(1:4))+
  # Ajustar o rótulo dos eixos
  labs(y="Inflação mensal",
       x="Período",
       title = "Inflação",
       caption = "IBGE")+
  # Alterar a posição da legenda
  theme(legend.position = "bottom")


# Armazenar informação em um objeto
renda_domiciliar <- pdad_2018_moradores %>%
  # Vamos mudar para ausente os valores das variáveis G16,G19,G201 até G204
  # com códigos 77777 ou 88888.
  # Vamos também mudar para 0 quando os valores que não se aplicarem
  # ou não forem observados rendimentos
  dplyr::mutate_at(vars(G16,G19,G201:G204), # Variáveis a serem alteradas
                   # Função a ser aplicada
                   list(M=~case_when(. %in% c(77777,88888)~NA_real_,
                                     . %in% c(66666,99999)~0,
                                     TRUE~as.numeric(.)))) %>%
  # Selecionar apenas as variáveis de interesse
  dplyr::select(A01nFicha,E02,G16,G19,G201:G204,G16_M:G204_M) %>%
  # Somar as variáveis modificadas para construir a renda individual
  dplyr::mutate(renda_individual=rowSums(.[,c("G16_M","G19_M",
                                              "G201_M","G202_M",
                                              "G203_M","G204_M")],na.rm = F)) %>%
  # Desconsiderar os empregados domesticos moradores e seus parentes
  dplyr::filter(!E02 %in% c(16,17,18)) %>%
  # Agrupar por domicílio
  dplyr::group_by(A01nFicha) %>%
  # Somar os valores por domicílios
  dplyr::summarise(renda_dom=sum(renda_individual, na.rm = F),
                   # Construir o número de pessoas no domicílio, por esse critério de rendimento
                   pessoas=n(),
                   # Calcular a renda domiciliar per capita
                   renda_dom_pc=renda_dom/pessoas)


mean(renda_domiciliar$renda_dom, na.rm=T)


# Consultar o índice das colunas de mesmo nome entre as bases
x <-
  which((names(pdad_2018_domicilios) %in% names(pdad_2018_moradores)))

# Verificar quais são as colunas
names(pdad_2018_domicilios)[x]

# Fazer o join das bases
pdad <- pdad_2018_moradores %>%
  # Entrar com a função para left join
  dplyr::left_join(
    # Informar a base que iremos unir, filtrando para colunas repetidas
    pdad_2018_domicilios %>%
      dplyr::select(-c(A01ra,FATOR_PROJ)))



# Fazer o join das bases
pdad <- pdad_2018_moradores %>%
  # Entrar com a função para left join
  dplyr::left_join(
    # Informar a base que iremos unir, filtrando para colunas repetidas
    pdad_2018_domicilios %>%
      # Filtrar as colunas repetidas
      dplyr::select(-c(A01ra,FATOR_PROJ)),
    by=c("A01nFicha"="A01nFicha"))


pdad <- pdad %>%
  dplyr::mutate(datavisita=lubridate::mdy(datavisita),
                # Extrair o valor do mês
                mes=lubridate::month(datavisita,label=F),
                # Extratir o valor do ano
                ano=lubridate::year(datavisita)) %>%
  # Trazer as informações de renda
  dplyr::left_join(renda_domiciliar) %>%
  # Trazer as infomações de inflação
  dplyr::left_join(inflacao_df) %>%
  # Criar as variáveis monetárias em termos reais
  dplyr::mutate(renda_dom_real=renda_dom*inflator,
                renda_dom_pc_real=renda_dom_pc*inflator)


# Carregar os pacotes necessários
library(survey)
library(srvyr)

# Declarar o desenho incial
sample.pdad <- 
  survey::svydesign(id = ~A01nFicha, # Identificador único da unidade amostrada
                    strata = ~A01setor, # Identificação do estrato
                    weights = ~PESO_PRE, # Probabilidade da unidade ser sorteada
                    nest=TRUE, # Parâmetro de tratamento para dos IDs dos estratos
                    data=pdad # Declarar a base a ser utilizada
  )

# Criar um objeto para pós estrato
post.pop <- pdad %>%
  dplyr::group_by(POS_ESTRATO) %>% # Agrupar por pos-estrato
  dplyr::summarise(Freq=max(POP_AJUSTADA_PROJ)) # Capturar o total da população

# Declarar o objeto de pós-estrato
# Estamos dizendo nesse passo qual é a população alvo para cada
# pós-estrato considerado
sample.pdad <- survey::postStratify(sample.pdad,~POS_ESTRATO,post.pop)

# Criar objeto para calcular os erros por bootstrap (Rao and Wu’s(n − 1) bootstrap)
# J. N. K. Rao and C. F. J. Wu - Journal of the American Statistical Association
# Vol. 83, No. 401 (Mar., 1988), pp. 231-241
amostra <- survey::as.svrepdesign(sample.pdad, type = "subbootstrap")

# Ajustar estratos com apenas uma UPA (adjust=centered)
options( survey.lonely.psu = "adjust")

# Ajustar objeto de amostra, para uso com o pacote srvyr
amostra <- srvyr::as_survey(amostra)



# População DF com mais de 18 anos
pop18 <- 
  amostra %>%
  # Filtrar somente a população com 18 anos ou mais de idade
  srvyr::filter(idade_calculada>=18) %>%
  # Criar uma variável auxiliar para contagem
  srvyr::mutate(count=1) %>%
  # Calcular o total da população, com seu intervalo de confiança
  srvyr::summarise(n=survey_total(count, vartype = "ci"))


amostra %>%
  # Filtrar somente a população com 18 anos ou mais de idade, retirando os códigos de não informação
  srvyr::filter(idade_calculada>=18) %>%
  # Ajustar a variável de sexo
  srvyr::mutate(E03=factor(case_when(E03==1~"Masculino",
                                     TRUE~"Feminino"))) %>%
  # Informar o grupo que queremos a informação
  srvyr::group_by(E03) %>%
  # Calcular o total e o Percentual da população, com seu intervalo de confiança
  srvyr::summarise(n=survey_total(vartype = "ci"),
                   # Calcular o percentual da população
                   pct=survey_mean(vartype = "ci"))


amostra %>%
  # Filtrar somente para informações do chefe, cujo peso é utilizado para 
  # expandir os resultados de domicílio
  srvyr::filter(E02==1)%>%
  # Calcular a renda domiciliar real média do DF
  srvyr::summarise(renda_dom_real=survey_mean(renda_dom_real,na.rm=T,vartype="ci"),
                   renda_dom=survey_mean(renda_dom,na.rm=T,vartype="ci"))



# Criar um objeto com o salário mínimo em 2018
sm <- 954

# Criar um objeto com as variáveis de interesse
vars_relatorio <- amostra %>%
  # Criar variável de sexo
  srvyr::mutate(sexo=case_when(E03==1~"Masculino",
                               E03==2~"Feminino"),
                # Criar variável de esgotamento sanitário
                esgotamento_caesb=case_when(B151==1~"Com Rede Geral (Caesb)",
                                            TRUE~"Sem Rede Geral (Caesb)"),
                # Criar variável de faixas de idade
                idade_faixas=cut(idade_calculada,
                                 breaks = c(-Inf,seq(4,84,by=5),Inf),
                                 labels = c("0 a 4 anos","5 a 9 anos",
                                            "10 a 14 anos","15 a 19 anos",
                                            "20 a 24 anos","25 a 29 anos",
                                            "30 a 34 anos","35 a 39 anos",
                                            "40 a 44 anos","45 a 49 anos",
                                            "50 a 54 anos","55 a 59 anos",
                                            "60 a 64 anos","65 a 69 anos",
                                            "70 a 74 anos","75 a 79 anos",
                                            "80 a 84 anos","Mais de 85 anos"),
                                 ordered_result = T),
                # Criar variável de faixas de salário do trabalho principal
                faixas_salario=cut(case_when(G16 %in% c(77777,88888,99999)~NA_real_,
                                             TRUE~as.numeric(G16)),
                                   breaks = c(-Inf,sm,2*sm,4*sm,10*sm,20*sm,Inf),
                                   labels = c("Até 1 salário","Mais de 1 até 2 salários",
                                              "Mais de 2 até 4 salários",
                                              "Mais de 4 até 10 salários",
                                              "Mais de 10 até 20 salários",
                                              "Mais de 20 salários")),
                # Criar variável para as RAs
                RA=factor(A01ra,
                          levels=1:31,
                          labels=c('Plano Piloto',      
                                   'Gama',
                                   'Taguatinga',
                                   'Brazlândia',
                                   'Sobradinho',
                                   'Planaltina',
                                   'Paranoá',
                                   'Núcleo Bandeirante',
                                   'Ceilândia',
                                   'Guará',
                                   'Cruzeiro',
                                   'Samambaia',
                                   'Santa Maria',
                                   'São Sebastião',
                                   'Recanto das Emas',
                                   'Lago Sul',
                                   'Riacho Fundo',
                                   'Lago Norte',
                                   'Candangolândia',
                                   'Águas Claras',
                                   'Riacho Fundo II',
                                   'Sudoeste/Octogonal',
                                   'Varjão',
                                   'Park Way',
                                   'SCIA-Estrutural',
                                   'Sobradinho II',
                                   'Jardim Botânico',
                                   'Itapoã',
                                   'SIA',
                                   'Vicente Pires',
                                   'Fercal'))) %>%
  # Transformar em fator variáveis do tipo character
  srvyr::mutate_if(is.character,list(~factor(.))) %>%
  # Selecionar as variáveis criadas e algumas variáveis auxiliares
  srvyr::select(RA,E02,idade_calculada,G05,sexo,esgotamento_caesb,idade_faixas,faixas_salario)



# Construir um objeto com as idades calculadas, por faixas de idade e sexo
# para montarmos a pirâmide etária
piramide <-
  vars_relatorio %>%
  # Agrupar por faixas de idade e sexo
  srvyr::group_by(idade_faixas,sexo) %>%
  # Calcular os totais
  srvyr::summarise(n=survey_total(na.rm = T, vartype = "ci"))

# Fazer o gráfico com a pirâmide
piramide_grafico <-
  piramide %>%
  # Construir um plot com as idades no eixo x, as quantidades no eixo y,
  #  preenchimento com a variável sexo, e os intervalos de confiança
  # inferiores e superiores
  ggplot(aes(x=idade_faixas,y=n, fill=sexo, ymin=n_low,ymax=n_upp))+
  # Fazer o gráfico de barras para o sexo Feminino
  geom_bar(data = dplyr::filter(piramide, sexo == "Feminino"),
           stat = "identity") +
  # Fazer o gráfico de barras para o sexo Masculino
  geom_bar(data = dplyr::filter(piramide, sexo == "Masculino"),
           stat = "identity",
           position = "identity",
           # Negativar os valores para espelhar no eixo
           mapping = aes(y = -n))+
  # Plotar os erros para o sexo Masculino, negativando os valores para espelhar o eixo
  geom_errorbar(data = dplyr::filter(piramide, sexo == "Masculino"),
                mapping = aes(ymin = -n_low,ymax=-n_upp),
                width=0,
                color="black")+
  # Plotar os erros para o sexo Feminino
  geom_errorbar(data = dplyr::filter(piramide, sexo == "Feminino"),
                width=0,
                color="black")+
  # Inverter os eixos, fazendo com que o gráfico de colunas verticais fique
  # horizontal
  coord_flip() + 
  # Ajustar as configurações de escala
  scale_y_continuous(labels = function(x) format(abs(x), 
                                                 big.mark = ".",
                                                 scientific = FALSE,
                                                 decimal.mark=",")) +
  # Suprimir os nomes dos eixos
  labs(x="",y="") +
  # Suprimir o nome da legenda
  scale_fill_discrete(name = "")

# Plotar gráfico
piramide_grafico



# Construir um objeto com as informações de salário
salario <- vars_relatorio %>%
  # Agrupar por faixas de salário
  srvyr::group_by(faixas_salario) %>%
  # Calcular os totais para cada grupo de salário
  srvyr::summarise(n=survey_total(na.rm=T,vartype = "ci"))

# Construir um objeto com o gráfico
salario_grafico <-
  salario %>%
  # Plotar os eixos x e y
  ggplot(aes(x=faixas_salario, y=n))+
  # Construir o gráfico de barras
  geom_bar(stat = "identity") +
  # Construir as barras de erro
  geom_errorbar(aes(ymin=n_low,ymax=n_upp,size=4, width=0), color="darkred")+
  # Inverter os eixos
  coord_flip()+
  # Suprimir o nome dos eixos
  labs(x="",y="")+
  # Retirar o título da legenda
  theme(legend.position="none")+
  # Ajustar as formatações de escala
  scale_y_continuous(labels = function(x) format(abs(x), 
                                                 big.mark = ".",
                                                 scientific = FALSE,
                                                 decimal.mark=","))

# Plotar gráfico
salario_grafico



# Carregar o pacote Scales
library(scales)

# Construir o objeto com os valores
salario2 <- vars_relatorio %>%
  # Agrupar por RA e faixas de salário
  srvyr::group_by(RA,faixas_salario) %>%
  # Calcular as proporções por faixa de salário
  srvyr::summarise(n=survey_mean(na.rm=T,vartype = "ci"))

# Construir o gráfico
salario2 %>%
  # Plotar os eixos x e y
  ggplot(aes(x=faixas_salario, y=n))+
  # Construir o gráfico de barras
  geom_bar(stat = "identity") +
  # Construir o gráfico com os erros
  geom_errorbar(aes(ymin=n_low,ymax=n_upp,size=4, width=0,group=RA), color="darkred")+
  # Inverter os eixos
  coord_flip()+
  # Suprimir o nome dos eixos
  labs(x="",y="")+
  # Suprimir o nome da legenda
  theme(legend.position="none")+
  # Ajustar as formatações de escala
  scale_y_continuous(labels = scales::percent)+
  # Plotar o gráfico para cada uma das RAs, divididas em 4 colunas
  facet_wrap(.~RA, ncol=4)



# Construir o objeto com o esgotamento sanitário
esgotamento <- vars_relatorio %>%
  # Filtrar para as informações somente do responsável (1 obs. por domicílio)
  srvyr::filter(E02==1) %>%
  # Agrupar por situação de esgotamento sanitário
  srvyr::group_by(esgotamento_caesb) %>%
  # Calcular a proporção de cada grupo
  srvyr::summarise(n=survey_mean(na.rm = T,vartype = "ci"))

# Construir o objeto com o gráfico
esgotamento_grafico <-
  esgotamento %>%
  # Plotar os eixos x e y, reordenando os fatores, do maior para o menor resultado
  ggplot(aes(x=fct_reorder(esgotamento_caesb,-n),y=n,ymin=n_low,ymax=n_upp))+
  # Construir o gráfico de barras
  geom_bar(stat = "identity")+
  # Construir os erros
  geom_errorbar(size=4, width=0,
                color="black")+
  # Ajustar os nomes dos eixos
  labs(x="",y="% Domicílios")+
  # Retirar o nome da legenda
  theme(legend.position="none")+
  # Ajustar a formatação dos rótulos
  scale_y_continuous(labels = scales::percent)+
  # Inserir informações dos resultados no gráfico
  geom_text(aes(label = paste0(round(100*n,0),"%")),
            size=4, fontface = "bold", 
            vjust = -0.25,hjust=1.25)

# Plotar grafico
esgotamento_grafico



# Salvar um arquivo com todos os objetos
save.image("objetos.rda", compress = T)
# Remover todos os objetos do ambiente
# rm(list = ls())
# Carregar os objetos salvos
load("objetos.rda")
