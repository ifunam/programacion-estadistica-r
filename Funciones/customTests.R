# Put custom tests in this file.

# Uncommenting the following line of code will disable
# auto-detection of new variables and thus prevent swirl from
# executing every command twice, which can slow things down.

# AUTO_DETECT_NEWVAR <- FALSE

# However, this means that you should detect user-created
# variables when appropriate. The answer test, creates_new_var()
# can be used for for the purpose, but it also re-evaluates the
# expression which the user entered, so care must be taken.
test_func1 <- function() {
  try({
    func <- get('sucesor', globalenv())
    t1 <- identical(func(0), 0 + 1)
    t2 <- identical(func(1), 1 + 1)
    t3 <- identical(func(-1), -1 + 1)
    ok <- all(t1, t2, t3)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}

test_func2 <- function() {
  try({
    func <- get('diferencia_cuadrada', globalenv())
    t1 <- identical(func(9, 4), 9^2 - 4^2)
    t2 <- identical(func(y = 5, x = 2),  2^2 - 5^2)
    t3 <- identical(func(5), 5^2 - 2^2)
    ok <- all(t1, t2, t3)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}

test_func3 <- function() {
  try({
    func <- get('numeros_por_vocales', globalenv())
    t1 <- identical(func("HOLA", "ESTO", "ES", "UNA", "PRUEBA"), "h0l4 3st0 3s un4 pru3b4")
    t2 <- identical(func("aeiou"),  "4310u")
    t3 <- identical(func("abc", "DEF"), "4bc d3f")
    ok <- all(t1, t2, t3)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}

test_func4 <- function() {
  try({
    func <- get('operador_binario', globalenv())
    t1 <- identical(func(`/`, 1, 3), 1 / 3)
    t2 <- identical(func(`|`, TRUE, FALSE),  TRUE | FALSE)
    t3 <- identical(func( `%/%`, 10, 3), 10 %/% 3)
    ok <- all(t1, t2, t3)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}

#Get the swirl state
getState <- function(){
  # Whenever swirl is running, its callback is at the top of its call stack.
  # Swirl's state, named e, is stored in the environment of the callback.
  environment(sys.function(1))$e
}

coursera_on_demand <- function(){
  selection <- getState()$val
  if(selection == "Si"){
    email <- readline("¿Cúal es tu nombre de usuario registrado en Coursera (email)? ")
    token <- readline("¿Cúal es tu token de la tarea? ")
    
    payload <- sprintf('{
                       "assignmentKey": "_69PY9V_EeWJQA5WIHTZIQ",
                       "submitterEmail": "%s",
                       "secret": "%s",
                       "parts": {
                       "5AI8H": {
                       "output": "1a6a42c5d4b25af946d76f907b18fd66"
                       }
                       }
  }', email, token)
    url <- 'https://www.coursera.org/api/onDemandProgrammingScriptSubmissions.v1'
    
    respone <- httr::POST(url, body = payload)
    if(respone$status_code >= 200 && respone$status_code < 300){
      message("¡El envío de la calificación fue satisfactorio!")
    } else {
      message("El envío de la calificación falló.")
      message("Presiona ESC si deseas salir de la lección")
      message("y subir tu calificación más tarde.")
      return(FALSE)
    }
}
  TRUE
  }
