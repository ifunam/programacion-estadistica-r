# Recuerda que las funciones pueden ser pasadas como argumentos de otras
# funciones. Por ejemplo si defines las siguientes funciones:
#
# inverso_aditivo <- function(a){
#    -a
# }
#
# operador_unario <- function(x,f){
#  f(x)
# }
#
# Y evaluas operador_unario(10, inverso_aditivo), obtendrás -10.
# Asimismo, si evaluas operador_unario(10, `-`) obtendrás -10.

# Nota: Algunas funciones usan una sintaxis especial, como son los operadores
# `<-', `+`, `*`, `-`, etc. Si deseas usar estos operadores de la misma manera
# que funciones solo debes encerrar el operador entre comillas inversas. Es
# decir, a + b es lo mismo que `+`(a, b); de la misma forma, -c es equivalente
# que `-`(c).
#
# Si ahora evaluas operador_unario(3.7, round) obtendrás 4. La función round()
# redondea el número que recibe como parámetro. Mientras que si evaluas
# operador_unario(0, cos) obtendrás 0 (coseno de 0).
#
#
# Ahora termina la función operador_binario, la cual recibe una función fun y
# dos elementos a y b, y regresa la evaluación de fun pasándole como primer
# argumento a y como segundo argumento b. Recuerda que el orden en que pases los
# argumentos es muy importante.
#
# Este ejemplo puede ser un poco complicado, por lo que debes saber que:
#
# 1. operador_binario(`*`, 5, 7) evalúa a 35.
# 2. operador_binario(paste, "¡Hola Mundo!", "¡Adiós Mundo!") evalúa a "¡Hola
# Mundo! ¡Adiós Mundo!"

operador_binario <- function(fun, a, b){
  fun(a, b)
}
