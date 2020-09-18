# Este código se ejecuta al iniciar una sesión de R
options(internet.info = 0,
        digits = 4,
	scipen = 10,
	prompt = "R> ",
	continue = "... ")

.First <- function() { # Se ejecuta al comienzo de la sesion
  try(print(fortunes::fortune()), silent = TRUE)  # Galleta de la fortuna
}

.Last <- function() { # Se ejecuta al final de la sesion
  condicion <- suppressWarnings(!require(fortunes, quietly = TRUE))

  if (condicion) try(install.packages("fortunes"), silent = TRUE)
}

message("Todo listo.")
