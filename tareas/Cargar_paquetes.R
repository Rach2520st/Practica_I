#Permite borrar todo lo del entorno
rm(list = ls())
library("ade4")
## Acordeon funciones útiles al trabajar con paquetes y archivos de datos

list.files() #Entrega la lista de los archivos del directorio en el que te encuentras
#funcion paste() y paste0()

## Ejercicio: cargar el archivo
# "Descargas/Practica/BioinfinvRepro/Unidad3/PracUni3/maices/meta/maizteocintle_SNP50k_meta_extended.txt
# determinar con un comando cuantas filas(muestras) tiene la df

mis.datos<- read.delim(file= "Descargas/Practica/BioinfinvRepro/Unidad3/PracUni3/maices/meta/maizteocintle_SNP50k_meta_extended.txt", header =TRUE)
nrow(mis.datos)
