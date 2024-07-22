#Mi script de práctica para plots

###

#Base R.


## Graficas x, y

#Hace vectores choclate
largo <- c(10, 20, 11, 15, 16, 20)
ancho <- c(1,10, 7, 8, 8, 11)

#plot
plot(x=largo, y=ancho)

#Plot de una df

head(cars) #ver que tiene cars
plot(cars) # plot directo. 
#Cambiar nombre de ejes, símnbolo y colores.
plot(x=cars$speed, y= cars$dist, xlab = "Velocidad", ylab = "Distancia",
     cex=1, pch=17, col ="chocolate4")

#Histogramas

#ver datos chocolate

head(islands)
hist(islands)

# Barplot

#set de datos de chocolate
DNAcon<- data.frame(muestra=c("A", "B", "C"), DNAcon=c(5,10,9)) 

barplot(DNAcon$DNAcon, names.arg = DNAcon$muestra)

#Ejercicio: repetir gráfica anterior 
#Agregando titulos a los eje x e y
barplot(DNAcon$DNAcon, 
        names.arg = DNAcon$muestra, 
        xlab = "muestras", #Título para eje x
        ylab ="Concentración", #Título para eje y
        col = c("red", "blue", "green")) #Poner colores


##ggplot2
#Cargar librería
library(ggplot2)

#ver datos del set de datos iris
head(iris)

#Gráfica de puntos x e y
#Forma 1:
ggplot(data = iris, 
       aes(x=Sepal.Length, y = Sepal.Width)) +
  geom_point()

#Forma 2:
myplot<- ggplot(data = iris, 
       aes(x=Sepal.Length, y = Sepal.Width)) 
myplot + geom_point()

#Colorear por especie y forma por especie 

myplot <- ggplot(data = iris, 
       aes(x=Sepal.Length,
           y = Sepal.Width,
           color = Species,
           shape = Species)) + geom_point(size =2) +
  theme_bw() #cambia el tema

## Paneles  
myplot + facet_grid(Species ~ .)

##Ejercicio: repetir la gráfica anterior
#pero sin colores ni shape distinto
myplot_sin_color <- ggplot(data = iris, 
                 aes(x=Sepal.Length,
                     y = Sepal.Width)) + geom_point(size =2) +
  theme_bw() #cambia el tema
myplot + facet_grid(Species ~ .)
#Ejercicio hacer el plot pero cambiando la dirección. 
myplot + facet_grid(. ~ Species)

#Ejercicio: Repite la figura anterior pero cambiando los labels para que digan
#“Ancho de sépalo” y “Largo de sépalo”, respectivamente. 
myplot_nombre<- myplot + labs(x= "Largo del sépalo", 
              y = "Ancho del sépalo")
myplot_nombre


#Agregar un regresión
myplot1 <- ggplot(data = iris, 
                 aes(x=Sepal.Length,
                     y = Sepal.Width,
                     color = Species,
                     shape = Species)) + geom_point(size =2) +
  theme_bw() +
  facet_grid(Species ~ .) #Agrega paneles

myplot1 + geom_smooth(method = "lm")

