# Kontroll i koden
library(tidyverse)

#### Bruk av ifelse ####
alder <- c(49, 39, 51, 73, 41)
ifelse(alder < 50, "yngre", "eldre")

# Lage en kategoriske variabel
dt <- data.frame(id = 1:5, alder)
dt <- dt %>%
  mutate(alder_kat = ifelse(alder < 50, "yngre", "eldre"))
View(dt)





#### Bruk av if og else ####
alder_grense <- 70

if (all(dt$alder < alder_grense)){
  print(paste("Alle IOer er under", alder_grense))
} else {
  print(paste("Alle IOer med alder", alder_prense, "er fjernet."))
  dt %>% 
    filter(alder < alder_grense)
}




