# Organización de un proyecto bioinformático
* SRA -> short reads 
* Dryad -> permite ingresar diferentes tipos de datos
* Opern science framework -> repositorio 
Un proyecto bioinformático consiste en los datos crudos, datos procesados, scripts y documentación necesarios para reproducir los análisis realizados. 
## Organización de directorios
Un proyecto bioinformático debe tener su propio directorio y contener subdirectorios con todo lo necesario para realizarlo. 
* data -> contiene los datos, tambien puede tener otros nombres como genetic para datos genéticos. Los datos genéticos pueden dividirse a su vez en subdirectorios como raw, filtered, genotypes, data_in, data_out. 
* meta, info o docs -> donde puedas guardar todos los metadatos, como un archivo cvs detallando info de cada una de las muestras. También es posible guardas aquí cualquier otro documento necesario para el procesamiento de datos.
** Es importante definir cuales serán los datos y cuales son los metadatos.  
* bin o scripts -> aquí guardas los scripts necesarios para correr el análisis de principio a fin, es obligatorio. Esta es la carpeta más díficil de documentar. 
* figures -> opcionalmente puedes poner aquí el código que se utilice solo para hacer las figuras de una publicación dada. Es como un extracto de bin dedicado solo a esto. 
* archive -> este directorio NO se sube al repositorio pero es bueno para ir poniendo ahí scripts y resultados que crees no necesitar más pero que es bueno no borrar por completo.
También es posible tener un directorio para cada subanálisis concreto. 
Cada carpeta debe tener un README en donde se explica detalladamente que hay dentro de cada carpeta. 
# Open Science Framework
Sirve para depositar y compartir cualquier tipo de dato. 
Preprint -> versión de un artículo que no ha sido publicado. 
# Documentación de scripts y del proyecto.
Documentar permite que otros entiendan que hace cada parte de nuestro código.
* Código comentado y organizado en scripts
* README
## README
* "Leeme"
* Un archivo de texto que detalle:
* Que hay dentro del repositorio y cada uno de sus directorios. 
* Que hacen cada una de las funciones/scripts del repositorio. 
* Cómo y en qué orden deben ocuparse los scripts para realizar los análisis. 
## ¿Por qué documentar y compartir nuestro código?
* Reproducibilidad de la ciencia
* Construir sobre lo construido y hacer mejor el código que antes. 
*  Openness makes software better sooner -> especifica que es mucho más fácil arreglar errores en un código abierto que en un código cerrado. Funciona como una especie de bazar en la que hay multiples contribuidores, en cambio el código cerrado implica que se vaya corrigiendo solo con los diseñadores.
## ¿Reproducible para quién?
1. Quien hizo la investigación. 
Reutilizar código o datos para nuevos análisis.
Ganar confianza en tus resultados
2. Luchar vs crisis de la reproducibilidad. 
La reproducibilidad es algo serio. 
Excusas comunes para no compartir el código:
me da verguenza que vean mi código. 
no quiero que otros saquen provecho de mi codigo
otros no publican ¿por que yo si?
me da flojera
si publico le van a encontrar errores y demandar correcciones o ayuda. 
## ¿Cómo documentar y compartir código?
* scripts comentados y con un README.
* Repositorios de código
* Dryad
* Github

# Markdown
Básicamente es una manera de escribir texto de manera que sea interpretado por un programa y convertido en un bonito html. 
**No es para escribir scripts**
* Tarea realizada: tarea_markdown.

# git

Permite llevar el control de las versiones de un proyecto informático. 
Tarea 1: seguir tutorial Hello world github
Tarea 2: crear un repositorio que se llame "Tareas_BioinfRepro2024_TusIniciales"
## términos más importantes
* repositorio -> Un directorio que git va a seguir con un control de versiones.
* fork -> se crea un fork cuando el repositorio es copiado de la cuenta de un miembro github a la de otro. 
* branch -> rama principal llamada master. Se pueden crear más ramas sin afectar al código original. 
* commit -> equivale a guardar los cambios en git que no es lo mismo que en el archivo. Puedes agregar al commit un comentario.
* push -> permite enviar los commits locales al repo online. 
* pull -> recibe los cambios. 
    - pull request -> Si se quieren agregar las modificaciones en la branch master, se envía una solicitud al propietario original. Es decir tú no haces push, le pides al propietario que haga pull
    - Merge -> Una vez que el propietario del repositorio ha revisado y aceptado los cambios, fusiona las ramas.
add issues sirve para generar conversaciones de cierto commit. 
bug -> fallo dentro del programa que hace que el programa no funcione bien. 
debuggear -> buscar el problema.
## Configurar nuestro git local con Github
Para cambiar tu correo necesitas seguir cualquiera de estas dos:
1. correr : `git config --global --edit`
2. Correr:
`git config --global user.email "email@example.com"`

`git config --global user.name "Mi_nombre"`
**Recuerda sustituir el nombre y el correo por tus credenciales**
Para corroborar:
`git config --global user.email`

## Comandos que se utilizan frecuentemente

### git clone

 Te permite copiar un repositorio. 

### git status

 Permite ver el estado del repositorio. 
 
### git add

nos permite seguir los cambios en determinado archivo para después hacer un commit.
permite adjuntar 

### git commit -m 

permite agregar un commit más un comentario. Subir cambios.

### git diff 

permite ver las diferencias entre el repositorio y los archivos en tu directorio. 

### git rm 

Se utiliza para borrar un archivo que fue agregado a git y luego se quiere eliminar. 

### git push

permite enviar los cambios. 
git push origin master -> enviar los cambios a la rama master
para cambiar de rama se debe hacer git push origin nombre_de_la_rama.


### git pull

jala y junta todo para el repositorio final
Actualiza la copia del repositorio local con respecto a la rama remota.

### git fetch

Si vas a trabajar con repos de otras personas problablemente no quieras hacer un merge en automático (que es lo que hace pull tras bambalinas) con tu repo local, sino que solo quieras jalar los cambios que hayan hecho otros. Por ejemplo los archivos que agregue a este repo sin que borre lo que tu hayas hecho en tu versión. Para evitar posibles problemas asociados a esto se recomienda usar fetch.

### git log

permite ver un historial dentro del repositorio.

# Creación de pipelines

La programación modular se refiere a subdividir un programa de cómputo en varios sub-programas. 
* es más sencillo de entender. 

**Ejercicio:** Mira el siguiente script (tomado del manual de Stacks) y contesta lo siguiente:

- ¿Cuántos pasos tiene este script? = 5 pasos
- ¿Si quisieras correr este script y que funcionara en tu propio equipo, qué línea deberías cambiar y a qué? =  src=$HOME/research/project y se debe cambiar por la ruta que contiene los archivos para poder correr tu propio pipeline
- ¿A qué equivale $HOME? = al directorio en el que se encuentran los archivos.
- ¿Qué paso del análisis hace el programa gsnap? realiza el alineamiento
- ¿Qué hace en términos generales cada uno de los loops? 
    -  El primer bucle toma cada archivo de entrada en formato FASTQ (.fq), lo alinea contra una base de datos de referencia usando GSnap y convierte los archivos alineados a formato SAM (.sam). Luego, convierte los archivos SAM a formato BAM (.bam) utilizando Samtools. Finalmente, elimina los archivos SAM para ahorrar espacio en disco.
    Detalles:
    gsnap: Realiza la alineación de las secuencias. samtools view -b -S -o: Convierte el archivo SAM a BAM. rm: Elimina el archivo SAM para conservar espacio.
    - El segundo bucle procesa los archivos BAM generados en el primer bucle utilizando la herramienta pstacks de Stacks. pstacks identifica y procesa los polimorfismos (SNPs) en los datos alineados.Detalles:
    pstacks -p 36 -t bam -m 3 -i $i -f $src/aligned/${file}.bam -o $src/stacks/: Procesa el archivo BAM con pstacks, utilizando 36 hilos de procesamiento (-p 36), y genera los archivos de salida en el directorio $src/stacks/.
    let "i+=1": Incrementa el índice de muestra (i) para cada archivo.
   - El tercer bucle crea una lista de archivos de muestra ($samp) que se utilizará como entrada para cstacks.
   Detalles:
    samp+="-s $src/stacks/$file ": Agrega cada archivo de muestra al string samp en el formato requerido por cstacks.
    - el cuarto bucle ejecuta sstacks para comparar cada muestra con el catálogo generado por cstacks.Detalles:
    sstacks -g -p 36 -b 1 -c $src/stacks/batch_1 -s $src/stacks/${file} -o $src/stacks/ &>> $src/stacks/Log: Compara cada muestra con el catálogo para identificar polimorfismos compartidos.
    - finalmente el quinto bucle calcula las estadísticas de la población y exporta varios archivos de salida en diferentes formatos (Structure, Phylip, Genepop).
    Detalles:
    populations -t 36 -b 1 -P $src/stacks/ -M $src/popmap -p 9 -f p_value -k -r 0.75 -s --structure --phylip --genepop: Ejecuta el análisis de la población utilizando populations, con los parámetros especificados para controlar la profundidad del análisis y los formatos de salida.

**Ejercicio:** retoma el ejercicio anterior y divídelo en un subscript para cada paso y un script maestro que corra toda la pipeline.
**ver el ejercicio en tareas**
