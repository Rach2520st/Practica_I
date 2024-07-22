##Loops
for (i in 2:10){
  print(paste(i, "elefantes se columpiaban sobre la tela de una araña"))
}
#Ejercicio: escribe un loop que divida 35 
# entre 1:10 e imprima el resultado en la consola

for (i in 1:10) {
  x <- 35/i
  print(x)
}

for (i in c("noventa", "ochenta", "setenta", "millones", "ni una mas")) {
  print(paste(i, "botellas en la pared"))
}

for (i in 1:10) {
  x <- 35
  y<- x+i
  print(y)
}
elefantes<-character(0)
for (i in 2:10){
  elefantes<-rbind(elefantes, (paste(i, "elefantes se columpiaban sobre la tela de una araña")))
}
elefantes

