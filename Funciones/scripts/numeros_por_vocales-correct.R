# Normalmente '...' se utiliza si no sabes el número de parámetros que
# va a recibir la función que estas definiendo, o si un número variable
# de argumentos se pasara a otras funciones que existen dentro del cuerpo
# de la función que estas definiendo.
#
# El uso de '...' en una función normalmente se ve así:
#
# funcion(argumento_1, argumento_2, ...)
#
# Usualmente las funciones que usan a '...', lo tienen como último argumento.
# Curiosamente el uso de la función paste() es el siguiente:
#
# paste (..., sep = " ", collapse = NULL)
#
# La función paste() concatena los elementos en '...' y usa la cadena sep para
# separar los términos concatenados. Nótese que en este caso '...' es el
# primer argumento y todos los argumentos después de '...' tienen valores por
# defecto. Esto se debe a que es regla en R, que todos los
# argumentos después de '...' tengan valores por defecto. Si lo piensas
# dos veces esto tiene sentido, debido a que de otra forma los demás
# argumentos pueden ser tomados dentro de '...' si no los nombras, lo que
# causaría un error cuando desees usarlos.
#
# A continuación se muestra la función a_mayusculas:
#
# a_mayusculas <- function(...){
#   frase <- paste(...)
#   toupper(frase)
# }
#
# La función a_mayusculas recibe un número no definido de elementos.
# Estos elementos son concatenados con la función paste() y una vez
# concatenados son pasados a mayúsculas usando la función toupper().
#
# Si evaluas a_mayusculas("¡Hola Mundo!") obtendrás "¡HOLA MUNDO!".
#
# Ahora debes implementar la función numeros_por_vocales, la cual recibe un
# número arbitrario de argumentos. Esta función debe concatenar los
# elementos que recibe como argumentos con espacios en blanco, pasar los
# elementos a minúsculas, y sustituir las vocales "aeio" por los números
# "4310" respectivamente.
#
# Eres libre de implementar la función numeros_por_vocales de la manera que
# desees, siempre y cuando el resultado final sea la concatenación de los
# elementos que recibas como parámetros, que éstos se encuentren en minúsculas
# y que sustituyas todas las apariciones de las vocales "aeio" por los
# números "4310" respectivamente.
#
# Hint 1: tolower(x) regresa la cadena x en minúsculas.
#
# Hint 2: chartr(old, new, x) Traduce los caracteres especificados en old
# por los caracteres especificados en new que se encuentren en la cadena x.
# Ejemplo chartr("si", "5y", "sistemas") evalúa a "5y5tema5".
#
# Recuerda establecer los valores por defecto apropiados. Cerciórate de guardar
# tus cambios e ingresar submit() cuando hayas terminado.


numeros_por_vocales <- function(...){
  chartr("aeio", "4310", tolower(paste(...)))
}
