# Funksjoner

#### Lage en funksjon ####

lage_fylke <- function(kommunenr){
  substr(kommunenr, 1, 2)
}

lage_fylke("0301")


#### Parameter ####

lage_fylke <- function(kommunenr, sjekk_lengde){
  if(sjekk_lengde == TRUE){
    kommunenr <- ifelse(nchar(kommunenr) == 3, 
                        paste("0", kommunenr, sep = ""), 
                        kommunenr)
  }
  fylke <- substr(kommunenr, 1, 2)
  fylke
}

lage_fylke(kommunenr = "301", sjekk_lengde = TRUE)
lage_fylke(kommunenr = "301", sjekk_lengde = FALSE)

#### Default paramter ####
lage_fylke <- function(kommunenr, sjekk_lengde = TRUE){
  if(sjekk_lengde == TRUE){
    kommunenr <- ifelse(nchar(kommunenr) == 3, 
                        paste("0", kommunenr, sep = ""), 
                        kommunenr)
  }
  fylke <- substr(kommunenr, 1, 2)
  fylke
}

lage_fylke("301")

#### Kontroll og varsling ####
lage_fylke <- function(kommunenr){
  if (nchar(kommunenr) <= 2){
    stop("Kommune nummer var ikke gjeldig.")
  }
  if (nchar(kommunenr) == 3){
    warning("Kommunenummer er lendge 3 og har blitt fylt med en ledende 0\n")
    kommunenr <- paste("0", kommunenr, sep = "")
  }
  fylke <- substr(kommunenr, 1, 2)
  fylke
}
lage_fylke(kommunenr = "03")
lage_fylke(kommunenr = "301")
lage_fylke(kommunenr = "0301")