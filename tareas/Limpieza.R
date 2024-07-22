##Limpieza de datos
rm(list=ls())
##Cargar librerías
library(dplyr)
library(tidyr)
library(readr)
#Ejemplo de limpiar datos donde los encabezados de las columnas
# son en realidad valores
# leemos la base y cargamos datos
pew <- read.delim(file = "http://stat405.had.co.nz/data/pew.txt",
                  header = TRUE, stringsAsFactors = FALSE, check.names = F)
pew

### Convertir las columnas que son variables en una sola columna. 
pew_tidy <- gather(data = pew, key = income, value = freq, -religion)

#Una columna está asociada a más de una columna. 
tb<- read.csv(file = "/home/rach/Descargas/Practica/BioinfinvRepro/Unidad3/PracUni3/ejemplosgenerales/data/tb.csv")
head(tb)
#Utilizar gather para que las columnas sexo-edad 
# esten en una columna llamada "demo" y otra columna
#llamada "n" que contenga el número de casos confirmados. 
#sol1= diciendo cuales columnas si, con sus indices(número de columnas)
tb_tidy<- gather(data = tb, key = demo, value = n, 4:23) 
#sol2 : decir cuales no por su nombre
tb_tidy1<-gather(data = tb, key = demo, value = n, -id, -iso2, -year)
#sol3: igual que dos pero ahorrando - 
tb_tidy2<- gather(data = tb, key = demo, value = n, -c(id, iso2, year), na.rm=TRUE)
tb_tidy2
#Separar las variables genero y edad (estan en demo) en columnas independientes
tb_muy_tidy<-separate(data = tb_tidy2, col = demo, into = c("sex", "age"), sep = 8)
tb_muy_tidy
## Generar una tabla de frecuencias
table(tb_muy_tidy$sex)

## Tarea:
## Quitar el "new_sp" para que solo diga f o m

tb_muy_tidy<- tb_muy_tidy %>%
  mutate(sex=sub("new_sp_", "", sex))

tb_muy_tidy
#Tarea:
#Volver numeric la edad. 
class(tb_muy_tidy$age)

tb_muy_tidy <- tb_muy_tidy %>%
  mutate(age = as.numeric(age))

class(tb_muy_tidy$age)
tb_muy_tidy

#Variables almacenadas en filas y columnas
#Cargo datos
clima <- read.delim("../../BioinfinvRepro/Unidad3/PracUni3/ejemplosgenerales/data/clima.txt", stringsAsFactors=FALSE)
head(clima)

#gather las columnas de dias

clima_long<-gather(clima, day, value,d1:d31, na.rm=TRUE)

##Crear nuevas variables

clima_vars<- mutate(clima_long, day = parse_number(day), value = value/10)
clima_vars <- arrange(clima_vars, id, year, month, day)
clima_vars


#Lo mismo pero con pipe- pipe en R es %>%
#Ejercicio utiliza %>% para repetir el ejercicio anterior sin crear “clima_” intermedios.
clima_vars <- clima_long %>% 
  mutate(day = parse_number(day), value = value / 10)  %>%
  arrange(id, year, month, day) %>%
  spread(element, value)
head(clima_vars)



