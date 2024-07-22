# CLASE 2- UNIDAD3
# Introducción a R
R por default representa los números como `numeric` no como `integer`
seguimos en la linea 127 del **acordeon_basico_R.R**

Las listas permiten tener caracteres y numeros. Una lista puede almacenar lo que sea, incluso funciones. 

Las matrices son objetos bidimensionales.

## Data frames
Para ver como cargar los df y como utilizarlos ver el `acordeon_basico_R.R`
Los subsets se pueden ver mediante el simbolo `$`

## Cargar archivos

ver el script **Cargar_archivos.R**

Debes fijarte en que read necesitas segun el tipo de archivo que quieres cargar, y cuales son los argumentos que tienes que entregarle. 

## Trabajar con paquetes y datos externos

vamos a otro script-> **Cargar_paquetes.R**

se pueden instalar paquetes desde la terminal de R con `install.packages("nombre_paquete")`
El instalar librerías no debe ir en el script.
Solo debe llamarse a la librería mediante `library("nombre_librery")`
### Como citar 
Citar R:
```
citation("base")
```
Citar un paquete en particular:
```
citation("paquete")

```

mediante -> `rm(list = ls())` se elimina todo lo que contiene el entorno de R, es necesario cada vez que ejecutamos para que el entorno se encuentre limpio. 

Comando prohibido en un script = **setwd()**
## For loops

revisar script `loops.R`

**Ejercicio**

Abre en RStudio el script Prac_Uni3/mantel/bin/1.IBR_testing.r. Este script realiza un análisis de aislamiento por resistencia con Fst calculadas con ddRAD en Berberis alpina.

Lee el código del script y determina:

    ¿qué hacen los dos for loops del script?
    ¿qué paquetes necesitas para correr el script?
    ¿qué archivos necesitas para correr el script?

