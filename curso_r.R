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
