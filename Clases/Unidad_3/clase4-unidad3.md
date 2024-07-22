# Rmarkdown y R notebook

Se debe guardar el archivo Rmarkdown con extensión `.Rmd` 

# Limpieza de datos

con datos limpios podemos manipular mucho mejor los datos, filtrar, realizar variables, ordenar los datos. 
También podemos visualizarlos de mejor forma y además modelarlos para poder sacar conclusiones.
Principios de datos limpios de Hadly Wickham. 
1. Cada variable forma una columna.
2. Cada observación forma un renglón.
3. Cada tipo de unidad observacional forma una tabla.

Problemas comunes: 
* Los encabezados de las columnas son valores y no nombres de variables
* Más de una variable por columna
* que esté revuelto, haya variables en filas y columnas. 
* una misma unidad de observación está almacenada en múltiples tablas. 

stringAsFactors (readdelim-> transforma texto a factor)
check.names, argumento de read.delim-> checkea si los valores son validos, si no lo son los arregla

ver `Limpieza.R`
ChatGPT

La función gather en R es parte del paquete tidyr y se utiliza para reestructurar datos de formato ancho a formato largo. En otras palabras, convierte columnas en filas, haciendo que los datos sean más adecuados para análisis y visualización.
ver como usar el comando gather en **limpieza.R**
na.rm=TRUE-> elimina los datos no asignados. 
usar separate para separar una columna en varias, ver el script. 

pipe en R es %>%
