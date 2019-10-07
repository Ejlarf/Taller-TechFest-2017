# =========================================================================
# Taller:     Manipulacion de datos en R
# Tallerista: Irma Rebeca Andalon Garcia
# Fecha:      Martes 26 de Septiembre de 2017
# Evento:     TechFest CUCEA 2017
# =========================================================================

# =========================================================================
# 1. Vision general de R
# =========================================================================

# Solicitar ayuda
help()

# Solicitar ayuda de la distribucion normal
? rnorm

# Solicitar ayuda de la distribuciones en el paquete stat
? distribution

# Buscar ayuda de la distribucion normal
help.search("rnorm")

help("barplot")

# Comentarios en R
# Hola, soy un comentario

# Retorna el directorio de trabajo actual
getwd()     

# Cambiar el directorio de trabajo actual (trayectoria relativa)
setwd("~/desktop")

# Cambiar el directorio de trabajo actual (trayectoria absoluta)
setwd("/users/randalon/desktop")
 
# Crear una carpeta nueva llamada pruebas
if ( !file.exists("pruebas") ) { dir.create("pruebas") }

# Cambiar el directorio de trabajo actual (trayectoria absoluta)
setwd("/users/randalon/desktop/pruebas")


# Listar paquetes disponibles
available.packages()

# Listar librerías disponibles
library()

# Actualizar los paquetes
update.packages()

# Instalar libreria
install.packages("ABCanalysis")

# Abrir libreria
library(ABCanalysis)

# Desinstalar paquete
detach("package:ABCanalysis", unload=TRUE)

# =========================================================================
# 2. R como calculadora
# =========================================================================

# Suma
3+3

# Resta
6-3

# Multiplicacion
3*4

# Division
4/3

# Division entera
5%/%2

# Modulo (residuo)
5%%2

# Potencia
3^3

# Valor infinito
5/0
1 / Inf
0 / 0

# Operadores aritmeticos
# Operadores lógicos 

# Conjunción "y" (AND)
TRUE & TRUE

# Disyunción "o" (OR)
TRUE | FALSE

# Negación (NOT)
! FALSE

# Disyunción exclusiva
 xor (TRUE,FALSE)

# Funciones matemáticas
log10(100)

log2(64)

log(2.718282)

exp(4)

log(100, base=10)

log(128, base=2)

pi

demo(plotmath)

# Funciones para cadenas 

#concatenar
paste("Zapopan","Jalisco")

#imprimir
cat("Zapopan","\n","Jalisco")

#subcadena
substr("Guadalajara",3,6)

# =========================================================================
# 3. Tipos de datos (clases y objetos) en R
# =========================================================================

# Objetos numericos
x <- 5
y <- 2
x * y

# Objetos enteros
x <- 5L

# Clase del objeto
class(x)

# Objetos caracter
z <- "CUCEA"
class(z)

# Objetos lógicos
x1 <- TRUE
x2 <- FALSE

# Objetos complejos

z <- x/y; print(z)
class(z)

# Objetos tipo secuencia numericos
a <- seq(5, 10, 1)
print(a)
class(a)
a[2]

b <- seq(1,12,2)
b

# Lista los objetos existentes 
ls() 

# Eliminar un objeto
rm(b) 

# Guardar los datos creados en la sesion en un archivo
#save.image(prueba.rdata)

# Crea un archivo de definicion de datos
save.image(file="datos.RData")

# Salir de R 
q( )   

# Cambiar el directorio de trabajo actual (trayectoria absoluta)
setwd("/users/randalon/desktop/pruebas")

# Cargar de un archivo de datos en la sesion actual
load("datos.RData")

# =========================================================================
# 4. Funciones para manejo de fecha y hora
# =========================================================================

# Funcion fecha y hora
date()

# Crear un objeto con la fecha y hora
d1 <- date()

# Visualizar el contenido del objeto
d1

# Obtener el tipo de objeto (clase a la que pertenece el objeto)
class(d1)

# Obtener fecha y hora del sistema
Sys.time()

# Crear un objeto con la fecha y hora del sistema
d2 <- Sys.time()

# Obtener el tipo de objeto (clase a la que pertenece el objeto)
class(d2)

# Crear un objeto con la fecha del sistema
d3 <- Sys.Date()

# Obtener el tipo de objeto (clase a la que pertenece el objeto)
class(d3)

# Obtener el nombre del mes del objeto fecha 
months(d3)       

# Convertir la fecha a calendario juliano
julian(d3)

# Obtener el dia de la semana del objeto fecha
weekdays(d3)

# =========================================================================
# 5. Vectores en R
# =========================================================================

# Crear vector de enteros (1 a 1000)
v2 <- 1:100
v2

# Crear vector con los cuadrados del vector v2
v2.cuadrado <- v2 ^2
v2.cuadrado

# Crear vector vA
vA <- c(10,8,6)
vA <- c(1,7:9)
vA <- c(1L, "Juan", 45.65) # conversión implicita

# Imprimir el vector
vecA
print(vecA)
View(vecA) #invocar visor

# Multiplicar cada elemento del vector por 10
vA * 10

# Crear el vector vB
vB <- c(seq(1,10,2))

# Primer elemento del vector vA
vA[1]

# Primeros cuatro elementos del vector vB
vB[1:4]

# Devuelve los indices de los elementos que cumplen la condicion
which (vB >= 5)

# Vectores
w <- vector("numeric",3)
u <- vector("logical",5)
v <- 40:30
class(v)
length(v)
NROW(v)

# Replica valor n veces
rep("Hola,2")
vec <- c(1,2,3)
vecD <- rep(vec, times=5)
vecD
index <- which(vecD==3)
vecD[index]

# Crear el vector sex
sex <- c( rep('M', 3), rep('F', 3) )
sex
which (sex == 'M')

# Crear el vector people
people <- c(seq(1,6,1))
people

# Crear el vector blood.gp
blood.gp <- c('A', 'B', 'AB', 'B', 'O', 'O')
blood.gp

# Crear vector x1
x1 <- c(1,2,3)

# Crear vector y1
y1 <- c(4,5,6)

# Producto de vectores
vec * vecA

# Producto externo de vectores
outer(vec,vecA)  

# Producto punto de vectores Un solo valor
vec%*%vecA

# Valor mínimo en el vector
min(vec)

# Valor maximo en el vector
max(vec)

# Promedio
mean(vec)

# Mediana
median(vec)

# Resultados de varisa funciones
summary(vec)

# =========================================================================
# 6. Matrices en R
# =========================================================================

# Crear el vector vX
vX <-  c(0,1,2,5,10,20)

# Crear el vector vY
vY <- c(0,0,0,5,25,80)

# Crear una matriz con los vector vX, vY renglones
row.bind <- rbind(vX,vY) # rbind enlazar renglones 2 x 6
row.bind
class(row.bind)

# Crear una matriz con los vector vX, vY renglones
col.bind <- cbind(vX,vY) # Enlazar x columnas 6 x 2
col.bind

# Elemento 1,1 de la matriz
row.bind[1,1]

# Columna 4 de la matriz
row.bind[,4]

# Renglon 1 de la matriz
row.bind[1,]

# Localiza el indice del elemento con valor igual a 5
index <- which(vX==5)

# Obtiene el elemento
vX[index]

# Crea una matriz rellena por renglones
m2 <- matrix(1:9, byrow=T, ncol=3)
m2
print(m2)
View(m2)
NROW(m2)

# Crea una matriz rellena por columnas
m3 <- matrix(1:9, byrow=F, ncol=3)
m3
View(m3)
NCOL(m3) 

# Subconjuntos
m2[2,3]
m2[,1] # Primera columna
m2[1,] # Primer renglón
m2[2] # Recorrido por columnas "Segundo elemento"
m2[2:3,1] # Filas 2 a 3, primera columna

m2[c(1,2)]
m2[-c(5,6)] # - Es menos esos valores
m2[m2>5]

# INDICE del elemento maximo en m2
which.max(m2)

# INDICE del elemento minimo en m3
which.min(m3)

m1 <- m2/2 # A cada elemento

# Suma, dimensión, diagonal
diag(m2)
colSums(m2)
rowSums(m2)
t(m2)
det(m2)
solve(m1) 

# Operaciones con conjuntos
A <- 1:5
B <- c(1,3,7:10)

union(A,B) # Unión

intersect(A,B) # Intersección

setdiff(A,B) # Diferencia

setdiff(B,A) # Diferencia


# =========================================================================
# 7. Listas en R
# =========================================================================

# Crear una lista
lista1 <- list(name="John",age=28,married=F)
lista1
View(lista1)
class(lista1)

# Nombres de las claves en la lista 
names(lista1)
lista1$name
lista1[1]

# Crear lista2 
lista2 <- list(name="Fred", wife="Mary", no.children=3, child.ages=c(4,7,9)) 
lista2
# Acceder un elemento de lista2
lista2$child.ages

lista2[2]
lista2$child.ages[2]


# =========================================================================
# Crear tres listas con campos nombre(caracter), edad(entero), casado(bool)
#    y sus valores
# =========================================================================

lista1 <- list(name="John",age=28,married=F)
lista1
lista1$name

lista2 <- list(name="Mary",age=30,married=T) 

lista3 <- list(name="Bob",age=32,married=T)

# =========================================================================
#  Crear una matriz por renglon con las tres listas 
#    Imprimir la matriz
#    Imprimir sus nombres
#    Imprimir los valores de la columna 3
#    Crear una lista con los nombres de los que estan casados
#    Crear una lista con los nombres de los que estan solteros
# =========================================================================

row.bind <- rbind(lista1,lista2,lista3)

row.bind
#       name   age married
#lista1 "John" 28  FALSE  
#lista2 "Mary" 30  TRUE   
#lista3 "Bob"  32  TRUE   

row.names(row.bind)
#[1] "lista1" "lista2" "lista3"

row.bind[,3]
#$lista1
#[1] FALSE

#$lista2
#[1] TRUE

#$lista3
#[1] TRUE

idxSol <- which(row.bind[,3]==FALSE)

idxSol
lista1 
     1 

row.bind[1,]
# $name
# [1] "John"

#$age
#[1] 28

#$married
#[1] FALSE

# =========================================================================
# 8. Estructuras (data frames) en R
# =========================================================================

# Crear el vector sex
sex <- c( rep('M', 3), rep('F', 3) )
sex

# Crear el vector people
people <- c(seq(1,6,1))
people

# Crear el vector blood.gp
blood.gp <- c('A', 'B', 'AB', 'B', 'O', 'O')
blood.gp

# Crear una estrucura con los objetos anteriores
df.1 <- data.frame(people, blood.gp, sex)

# Ver la clase de los objetos
class(df.1)
class(people)
class(sex)

# Desplegar contenido
df.1
df.1$people
df.1$people[1:3]
View(df.1, "Datos clinicos")

# Dimension de la estructura
dim(df.1)

# Consultar el nombre de las columnas
colnames(df.1)
names(df.1)

# Atributos de la estructura
attributes(df.1)

# WHICH
masc <- which(df.1$sex=='M')
df.1$sex
df.1$sex[masc]

# Ordenar en forma ascendente
sort(df.1$blood.gp)

# Ordenar en forma decreciente
sort(df.1$blood.gp, decreasing = TRUE)

# =========================================================================
# 9. Datos propios de R
# =========================================================================

# Lista los R data sets disponibles en el paquete "datasets"
data()

# Carga el conjunto data set iris
data("iris")

# Ver los datos como tabla
View(iris)

# Estructura interna de un objeto
str(iris)
# Variable Species
iris$Species

attach(iris) # establecida
detach(iris)

# Carga el conjunto data set women  AQUI VOY
data("women")
women
View(women)
names(women)
women$weight

# Crear un vector con los datos
h = women$height

# Tama??o del vector h
tam = length(h)

# Suma acumulada
cumsum(women$height)

# Carga el conjunto data set BOD
data("BOD")
BOD
View(BOD)

# Busca un valor en un campo, regresa los ??ndices
grep("setosa", iris$Species)

# Suma los elementos
sum(BOD$Time)

# Valores nulos
any(is.na(BOD$Time))

# sort reacomoda valores

# order reacomoda indices

# Sitio estad??stica / gr??ficos
# http://ocw.uc3m.es/estadistica/aprendizaje-del-software-estadistico-r-un-entorno-para-simulacion-y-computacion-estadistica/introduccion-a-los-graficos-en-r

# =========================================================================
# 10. Tablas de datos
# =========================================================================

# Instala el paquete
install.packages(data.table)

# Abre la libreria
library(data.table)

# Crea tabla 1
DT1 <- data.table(x=c('a','a','b','dt1'), y=1:4)
DT1
setkey(DT1,x)

# Crea tabla 2
DT2 <- data.table(x=c('a','b','dt2'), z=5:7)
DT2
setkey(DT2,x) # key o haskey

# Hacer un join con las tablas
merge(DT1,DT2)

# Leyendo datos
# =========================================================================
# 11. Archivos CSV
# =========================================================================

# Lee el archivo csv como una tabla
cameraData <- read.table("cameras.csv", sep = ',', header = TRUE)

cameraData

head(cameraData) # primeros 10 registros

view(cameraData)

# Leer solamente 10 registros
cameraData <- read.table("cameras.csv", sep = ',', header = TRUE, nrows = 10)

view(cameraData)

# =========================================================================
# 12. Archivos Excel
# =========================================================================

# Instalar el paquete
install.packages("xlsx")

# Abrir la libreria
library(xlsx)

cameraData2 <- read.xlsx("camera.xlsx", sheetIndex = 1, header = TRUE) #read. y el tipo de archivo a leer

head(cameraData2)
view(cameraData2)

colIndex <- 2:3
rowIndex <- 1:4

cameraSubset <- read.xlsx("camera.xlsx", sheetIndex = 1, colIndex = colIndex, rowIndex = rowIndex)
cameraSubset

inmuebles <- read.xlsx("inmuebles.xls", sheetIndex = 1, header = TRUE)
view(inmuebles)
# Todos los que vaya importando me los va a importar como data frame
# =========================================================================
# 13. Archivos XML
# =========================================================================

# Instalar el paquete
install.packages("XML")

# Abrir la libreria
library(XML)

# Direccion web
fileurl <- "http://www.w3schools.com/xml/simple.xml"

# Carga el documento
doc <- xmlTreeParse(fileurl, useInternalNodes = TRUE)

# Apunta al nodo raiz
rootNode <- xmlRoot(doc)

# Muestra el archivo
rootNode

# Nombre del nodo raiz
xmlName(rootNode)

# Primer registro
rootNode[[1]]

# Primer campo del primer registro
rootNode[[1]][[1]]

# Valores del campo name
xpathSApply(rootNode,"//name",xmlValue)

# funcion complete.cases 
clima.Complete <- complete.cases(clima)

# =========================================================================
# 14. Exportar datos en R
# =========================================================================

#write(D,file="Direccion.txt") 

# =========================================================================
# 14. Estructuras de control
# =========================================================================

# =========================================================================
# Condicional if-else
# =========================================================================
if ( x > 3) { y <- 10 }  else { y <- 0 }

print (y)

# Evalua una expresion
eval ( y < 1)

# =========================================================================
# Ciclo repeat
# =========================================================================
repeat 
{ 
  if (y < 1) 
  { 
    break 
  } 
  else 
  { 
      print(y)
      y <- y-1
  } 
}

# =========================================================================
# Ciclo for
# =========================================================================
for (i in 1:10) { print(i) }

for (i in c(3,2,9,6)) {print (i^2)}

# Crear objeto v1 
v1 <- c("a", "b", "c", "d")
print(v1)
medios.transporte <- c("carro", "camion","metro", "moto")

# Imprimir el contenido del objeto v1
for (letter in v1) { print(letter) }

for (vehiculo in medios.transporte)
    { print(vehiculo) }

# Crear objeto m1
m1 <- matrix(1:6, 2, 3)
print(m1)

# Imprimir los elementos del objeto m1
for (i in seq_len(nrow(m1))) { for (j in seq_len(ncol(m1))) { print(m1[i,j]) } }

# =========================================================================
# Ciclo while
# =========================================================================
n <- 0
suma <- 0

while (suma <= 1000)
{
  n <- n+1
  suma <- suma + n
}

suma
n

# =========================================================================
# 15. Funciones de Biblioteca
# =========================================================================

# =========================================================================
# Funciones y constantes matematicas
# =========================================================================

# Logaritmo base 10
log10(100)

# Logaritmo base e
log(2.7172)

# Logaritmo base 2
log2(64)

# Valor absoluto
abs(-12)

# Funci??n exponencial base e
exp(1)

# Ra??z cuadrada
sqrt(81)

# Constante pi
pi

# Redondea un n??mero a 2 d??gitos
round(3.476,digits=2)

# Obtener el entero m??s peque??o que sea mayor que el n??mero
ceiling(3.475)

# Obtener el entero m??s grande que sea mayor que el n??mero
floor(3.475)

# =========================================================================
# Funciones manejo de cadenas
# =========================================================================

# Replica el primer argumento el n??mero de veces del segundo
rep("Hola",2)

# Concatena cadenas
paste("Zapopan","Jalisco")

# Obtiene una subcadena de una cadena, posici??n inicial, posici??n final
substr("Guadalajara",3,6)

# =========================================================================
# 16. Funciones de usuario
# =========================================================================

# Define la funcion area.rectangulo
area.rectangulo <- function (base,altura) 
  { return(base*altura) }

# Manda llamar la funcion
area.rectangulo(4, 6)

# Define la funcion f
f <- function(a, b=3) { a ^ b }

# Manda llamar la funcion f
f(2)
f(2,4)

# =========================================================================
# Estadistica - medidas de centralizacion
# =========================================================================

# Promedio
mean(women$weight)

# Mediana
median(women$weight)

# Cuantiles
quantile(women$height)

quantile(women$height, probs=c(.1,.3, .7, .9))

# =========================================================================
# 17. Estadistica - medidas de dispersion
# =========================================================================

# Varianza
var(women$height)

# Desviacion estandar
sd(women$height)

# Rango de valores
range(women$height) 

# Diferencia en el rango
diff( range(women$height) ) 

# Resumen estadistico
summary(women)

# =========================================================================
# 18. VisualizaciÃ³n de datos
# =========================================================================

# Demostracion de graficos
demo("graphics")

# Carga los datos
data(VADeaths)
VADeaths

# Dibuja grafica de barras
barplot(VADeaths)

# Dibuja grafica de barras
barplot(VADeaths,beside=T)


# Dibuja grafica de pares
pairs(iris[,1:4])

# Otros ejemplos de gr??ficos
x2 <- seq(0, 2*pi, length=10)

plot ( cos(x2) )

plot (x2,cos(x2))

plot (sin(x2))

plot (women$height, women$weight)

boxplot (women$height)

barplot (women$height, col="yellow")

hist (women$height, main="HEIGHT")

pie (women$weight, col = rainbow(5))

dotchart (women$weight, main="WEIGHT")
# DEMOS
demo(graphics)
demo(persp)
demo(image)
demo(lm.glm)

# FIN DE ARCHIVO ==========================================================