##acordeno de objetos y funciones básicas de R. 
# expresiones matemáticas
(1324324-13343) * 2 
## Strings o cadenas de texto
"Hola mundo"
## valores lógicos o boolean
1<5
2+2 ==5
# funciones
getwd() #sirve para ver mi working directory
sum(1,2,3,89) #sirve para sumar
## Ejercicio: crea una variable con el logaritmo base 10 de 50 
##y súmalo a otra variable cuyo valor sea igual a 5.

# crear variable con log base 10 de 50
x<-log(50, 10)
#crear variable con valor de 5
y<-5
#sumar las 2 variables
sum(x, y)
#Notas de tipos de objetos
##Vectores
mi.vector<- c(1,2,NA,3,4) #crea un vector númerico con un NA
length(mi.vector) # indica el tamaño

y<- c(mi.vector,20, 23,80:85)
y
# ejercicio crear un vector x con números del 1 al 15
x<- c(1:15)

mi.vector[4] # permite ver el elemento por su indice
x[8:10] # permite ver los elementos dentro de un rango

#revisar no,mbres de x
names(x)
letters
names(x)<-letters[1:15]
#ver elementos por su nombre
x[c("d", "e")]

#Ejercicio
#Crear un vector con los numeros de 1 al 200 y del 300 al 450
numeros<- c(1:200, 300:450)
numeros
#Escribir como 10 es diferente de 
10!=0
#logical para todos los elementos de un vector
x<-1:20
x > 15
#que me de los elementos que cumplan con una condición lógica. 
x[x>15]
#cuantos números de mi vector son mayores a 15
sum(x>15)

#ejercicio: suma el número 2 a todos los números entre 1 y 150
sumar.dos<-c(1:150)
sumar.dos<- sumar.dos +2
sumar.dos
# ejercicio: ¿Cuantos números son mayores a 20 en el vecto -12432:234?
numeros1<--13432:234
numeros1[numeros1>20]
#Ejercicio: utiliza una sola línea de R para averiguar
#si el logaritmo base de 10 de 20 es menor que 
#la raiz cuadrada de 4
log(20,10)< sqrt(4)

#Character
x<- "tangana nica"
x<- c("tangana nica", "tangana na","2")
x[2]
x=="tangana nica"
## el == solo funciona para strings "completos"
#Para strings incompletos podemos usar grep
grep("tangana", x)
x[grep("tangana", x)]
#Ejercicio: crea un vector de 
#caracteres con tres nombres de especies. 
#dos de un mismo genero y otro de distinto.
especies<-c("Solanum lycopersicum" , "Solanum lycopersicum var. cerasiforme",
            "lycopersicon esculentum")

#Ejercicio: utiliza grep para buscar el nombre de
#las especies de un mismo genero
especies[grep("Solanum", especies)]
#como cambiar el working directory
setwd( "/home/rach")
#como redondear un número a n decimales
round(x, n)
#como repetir los elementos de un vector
rep(1:2, each=3)
#como saber si un dato esta perdido(na)
x[is.na(x)]
#como convertir a minusculas un string de texto
tolower(x)


#Factores
x<- c(1,2,3,1,2,1,3,2,3,1,1,2,3,1,2,3,2,2)

#ver x como un factor
as.factor(x)
meses<-c("March", "April", "January", "April")
meses<- as.factor(meses)
meses
# una tabla de frecuencias
table(meses)

#revisar levels de un factor
levels(meses)
#ejemplo de porque es util revisar levels de un factor
meses<-c("March", "April", "January", "Apri")
meses<- as.factor(meses)
levels(meses) #permite ver los niveles y si es que esto estan correctos
# cambiar los valores de un factor cambiando su level
x
levels(x)[1]<-"uno"
x
##Ejemplo más grande
meses<=c("March","April","January","November","January",
          "September","October","September","November","August",
          "January","November","November","February","May","August",
          "July","December","August","August","September","November",
          "February","April")
meses<-as.factor(meses)
levels(meses)

### Integer o numeric

x<- 1:3
class(x) #muestra que tipo es
x<- as.numeric(x)
class(x)

#Listas

x<- list(1:3, letters[1:3], sum)
x
x[(2)] #accesar a elementos
names(x)<- c("numeros", "letras", "fun")
x$numeros

#Matrices

x<- matrix(1:12, nrow = 4, ncol = 3)
x
x[1, 2]

#Ejercicio: como buscar elementos de las filas 1 y 3
# y columna 2
x[c(1,3), 2] #opcion positiva (las filas que quiero)
x[c(-2, -4), 2] # muestra todos menos la 2 y la 4

#Data frames
x <- data.frame(sp = c("Homo sapiens", "Homo sapiens", "Homo neanderthalensis", "Homo neanderthalensis"), sexo = c("Male", "Female", "Male", "Female"), edad = c(60,30,10,50))
x
#subset con $
class(x$sexo)
as.character(x$sexo)
# agregar filas o columnas

x<- cbind(x, pop = c ("Australia", "Mesoamérica", "Europa", "África"))

#ejercicio agregar una fila a la df x
nueva_fila <- c("Homo sapiens", "Female", 56, "Europa")
x<- rbind(x, nueva_fila)
x
#Ejercicio: mostras las primeras filas de la df x
x[1:2,]
head(x,2)
# Ejercicio: mostras las columnas sexo y pop (todas las filas)
x[ , c(2,4)]
x[ , c("sexo", "pop" )]
#Crear una nueva df con la columnas sexo y pop
y <- x[ , c(2,4)]
y

