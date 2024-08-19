# Loops

#### For-loop ####
alder <- c(49, 39, 51, 73, 41)

for (i in 1:5){
  print(i)
  print(alder[i])
}

{r}
for (a in alder){
  print(a)
}

#### While-loops ####
n <- 1
while (n < 10){
  print(n)
  n <- n + runif(1)
}
n