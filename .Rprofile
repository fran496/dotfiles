# Este es un script que se ejecuta al iniciar R

options(
  download.file.method = "libcurl",
  internet.info = 0,
  stringsAsFactors = FALSE,
  digits = 4,
  scipen = 10,
  editor = "vim",
  prompt = "R> ",
  continue = "... "
)

update.packages(ask = FALSE) # Actualizar al comienzo

.First <- function() { # Se ejecuta al comienzo de la sesion
  cat("\n¡Bienvenido a R!\n")
  if (interactive()) try(fortunes::fortune(), silent = TRUE) # Galleta de la fortuna
}

.Last <- function() { # Se ejecuta al final de la sesion
  condicion <- surpressWarnings(!require(fortunes, quietly = TRUE))
  
  if (condicion) try(install.packages("fortunes"), silent = TRUE)
  cat("\n¡Nos vemos!\n")
}

message("¡Se ha cargado R.profile!")

