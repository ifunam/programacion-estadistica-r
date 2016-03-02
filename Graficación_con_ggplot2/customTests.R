# Put custom tests in this file.

# Uncommenting the following line of code will disable
# auto-detection of new variables and thus prevent swirl from
# executing every command twice, which can slow things down.

# AUTO_DETECT_NEWVAR <- FALSE

# However, this means that you should detect user-created
# variables when appropriate. The answer test, creates_new_var()
# can be used for for the purpose, but it also re-evaluates the
# expression which the user entered, so care must be taken.

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
                       "assignmentKey": "NlOKT9WBEeWCWhLntEXs6Q",
                       "submitterEmail": "%s",
                       "secret": "%s",
                       "parts": {
                       "GWmfQ": {
                       "output": "e481b0d7697c6f3de0f88190629fe475"
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
