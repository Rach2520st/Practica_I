# Clase 2- UNIDAD 1
* ver en : https://www.youtube.com/watch?v=ppqsw1OVw_0
# Comandos bash
* ls -l -> entrega toda la información además de listar los archivos. 
* ls -lt -> los ordena por fecha de modificación
* man ls -> entrega el manual de ls, para salir presionar q. 
* ls -lhS
* mkdir -> crea directorios
* cp -r directorio .. -> permite copiar un directorio en un directorio atrás.
* mv directorio directorio1 -> permite mover directorio a directorio1
* rm -r Prueba -> elimina el directorio prueba. 
* tar -cvzf Maiz.tar.gz Maiz -> permite comprimir el directotio maiz.
* tar -xvf Maiz.tar.gz -> descomprime
* tar -tvf Maiz.tar.gz -> permite ver el contenido de gzip antes de descomprimirlo 

# Crear archivos de la terminal
* touch -> sirve para crear archivos
* con nano o vim se pueden editar archivos .txt
* curl -> sirve para bajar archivos  
* wget -> tambien sirve para lo mismo.
# Comodines
* ls *.bed -> entrega todos los archivos .bed
* ls *.b?? -> entrega todos los archivos que contienen una .b y siguen por otros 2 caracteres. 
* ls [a-z]*.bed -> cualquier archivo que contenga solo caracteres de la a a la z y terminen en .bed
# Expresiones regulares y búsqueda de patrones (grep)
* una expresión regular es una herramienta de búsqueda. 
* se puede pensar como una combinación de cáracteres literales o metacaracteres (tienen una función particular en la expresión regular).
* también se conoces como regexp, regex o grep. 
## ¿Para qué sirven?
* reformatear archivos de datos
* decile a un algoritmo que realice análisis en ciertas muestras y no otras.
* identificar patrones cortos de ADN en una secuencia. 
* xkcd -> memes de progra
* grep es un comando de bash
## ¿Cómo utilizar expresiones regulares en la línea de comando?
* grep --help
* la regularexpression puede ser tal cual el texto  buscar pero también podemos hacer una búsqueda mucho más compleja con operadores, cuantificadores y posicionadores, que permiten realizar búsquedas más flexibles.
### Operadores
* cualquier símbolo (una vez)
* [....] Para hacer una lista de caracteres, por ejemplo [Bb]iology10[1234] acepta cualquiera de las cadenas "Biology102", "biology101". También se pueden incluir rangos, por ejemplo: [0-9] para todos los números.
* [^...] Para hacer una lista de caracteres negativos, o sea que busque cualquiera excepto los enlistados.
* \w Cualquier "caracter de palabra", ie: letras, números y _.
* \W Cualquier "caracter de NO palabra", ie: símbolos raros que no son letras, números ni _.
* \ Sirve para usar los metacaracteres ($ * + . ? [ ] ^ { } | ( ) ) como caracteres literales. Por ejemplo \$3 para el string $3. A esto se le conoce como "escapar" (escape).
* | Operador "or" acepta un patrón u otro, por ejemplo p(err|at)o va a aceptar tanto "perro" como "pato".
* (....) Grupos, sirven para recuperar partes del patrón encontrado para ser usadas después

### Cuantificadores


* asterisco -> Cero o más ocurrencias del caracter anterior, por ejemplo 10*, va a aceptar las cadenas "1", "10", "100", "1000", etc
* + Una o más ocurrencias del caracter anterior, por ejemplo 10+, va a aceptar las cadenas 10", "100", "1000", etc, pero no la cadena "1"
* ? Hasta una ocurrencia del caracter anterior, por ejemplo patos?, va aceptar las cadenas "pato" y "patos"
*  {n} Exactamente n veces el caracter anterior, por ejemplo 10{5}, únicamente va a aceptar la cadena "100000"
*  {n,} Mínimo n veces el caracter anterior, por ejemplo 10{5,}, aceptará las cadenas "100000", "1000000", "1000000", etc
* {n,m} Entre n y m veces el caracter anterior, por ejemplo 10{2,5}, aceptará las cadenas "100", "10000"
### Posicionadores

* < Inicio de la cadena (palabra), por ejemplo <GAAA aceptará "GAAACCCTTT", pero no "CCCTGAAAC"

* > Fin de la cadena, por ejemplo TCCA> aceptará "ACTTCCA" pero no "AGTCCATC"
* ^ Igual que los anteriores, pero para el inicio de una línea
* $ Final de una línea

## Usos comunes de grep
* less tomatesverdes.fasta -> permite ver el archivo. q para salir. 
* grep ">" tomatesverdes.fasta  -> entrega las lineas que contienen ">"
* grep -c -> cuenta
* grep -l Physalis *.fasta-> lista los archivos que contienen Physalis terminados en .fasta.
* grep -i -> permite que grep sea insensible a mayusculas y minúsculas. 
* cuando ocupemos espacio es más seguro poner las palabras en comillas.
* grep -w -> hace que grep entregue solo palabras completas. 
* grep -E -> le indica a grep que estoy usando expresiones regulares. 
* grep -o -> genera un output. 
* grep -oE "\| \w+ \w+ " tomatesverdes.fasta -> muestra las variedades.
# Ejercicio 1:
* Obtener el nombre de la especie Physalis philadelphica como en el ejemplo anterior, pero sin el "|" del principio.
* Resultado: 
* grep -oE "\| \w+ \w+" tomatesverdes.fasta | sed 's/| //'
# Ejercicio 2:
* Obtener el nombre de las secuencias de los archivos tomatesverdes.fasta y jitomares.fasta y escribirlos a un archivo llamado secsIDs. No importa cómo escribas la expresión regular, pero el chiste es lograr que toda la operación sea en una sola línea de código.
* Resultado: grep -hoE "^>gi\|[0-9]+\|gb\|[A-Z0-9\.]+\|" tomatesverdes.fasta jitomate.fasta > secsIDs
# Redirección con bash
* > = sirve para enviar todo a un archivo. sobreescribe todo
* >> = permite integrar el contenido y lo pega al final. 
 ## Ejercicio:
* utiliza sed para sustituir "Solanum lycopersicum" del archivo Tomates/tomates.fasta por "jitomate" y guarda el output en un nuevo archivo llamado "edited_tomates.fasta"
 * solución = sed 's/Solanum lycopersicum/jitomate/' tomates.fasta > edited_tomates.fasta
* | es una tubería 
* se pueden unir comandos mediante |
* por ejemplo = ls | wc -l 
* history -> entrega el historial de comandos realizados. 
* history | grep less -> entrega las lineas que usaron less mediante el historial de la terminal.
