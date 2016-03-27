# programacion-estadistica-r

Lecciones interactivas de programación en R para uso con el paquete [swirl] (http://swirlstats.com). Forman parte del curso "Introducción a la programación estadística con R" de Coursera (https://www.coursera.org/learn/programacion-estadistica-r).


##Acerca de las lecciones como curso

Aunque las lecciones forman parte de un curso de Coursera como las tareas de programación, están diseñadas para ser autosuficientes, es decir no es necesario estar inscrito en el curso de Coursera para aprender.

El objetivo principal es brindar un curso en español interactivo sobre los fundamentos de la programación en R, con el fin de manipular datos, generar análisis y representaciones gráficas.

Las lecciones forman un curso básico de programación en R, el cual proporciona las bases del lenguaje R.



##Prerrequisitos

Para acceder a este curso debes tener instalado R, y preferiblemente RStudio, así como el paquete swirl.



##Instalación de swirl

1) Ingresa los siguientes comandos en la consola de R:

```
install.packages("swirl", dependencies = TRUE)
library("swirl")
select_language()
```


## Instalar lecciones desde swirl

1) Ingresa los siguientes comandos en la consola de R:

```
library(swirl)
install_course_github("ifunam", "programacion-estadistica-r")
```



## Instalar lecciones manualmente

1) Da clic en el botón **Download ZIP** que se encuentra del lado derecho de esta página.

2) Ingresa los siguientes comandos en la consola de R, **sustituyendo la ruta correcta** de tu archivo descargado:

```
library(swirl)
install_course_zip("ruta/al/archivo/descargado/programacion-estadistica-r.zip")
```

## Después de la instalación en Mac OS.

Una vez instalado el curso, cada vez que desees acceder a las prácticas debes ingresar:

```
Sys.setlocale("LC_ALL", "en_US.UTF-8")
swirl()
```

después seguir las instrucciones y seleccionar el curso "programacion-estadistica-r".

```Sys.setlocale("LC_ALL", "en_US.UTF-8")``` te permitirá ver los acentos.



## Después de la instalación en Windows y Linux

Una vez instalado el curso, cada vez que desees acceder a las prácticas debes ingresar:

```
swirl()
```

después seguir las instrucciones y seleccionar el curso "programacion-estadistica-r".



## Desinstalar el curso

Si te deseas desinstalar el curso, puedes usar `uninstall_course("programacion-estadistica-r")` en cualquier momento.
