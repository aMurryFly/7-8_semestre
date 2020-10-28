# Transacciones <- read.delim("~/Documents/7-8_semestre/inteligenciaArtificial/practices/DataSets/Transacciones.txt")

# En caso de no estar instalado
install.packages("arules")	 

library(arulesViz)
library(arules)

summary(Transacciones)

Reglas <- apriori(Transacciones[6:16], parameter= list(support=0.1, confidence = 0.5))

# Obtención de las reglas de asociación

Reglas
inspect(Reglas)
OrdenarReglas <- sort(Reglas, by="confidence", decreasing=TRUE)
inspect(OrdenarReglas)

# Gráficas de las reglas de asociación significativas

plot(OrdenarReglas, method="graph", control=list(type="items"))
plot(OrdenarReglas)
plot(head(OrdenarReglas,11), method="grouped")

#Escribir las reglas de asociación

write(OrdenarReglas, file = "/Users/alfonsomurrietavillegas/Documents/7-8_semestre/inteligenciaArtificial/practices/ejercicio_1/ReglasFuertes.csv", sep = ",", quote = TRUE, row.names = FALSE)