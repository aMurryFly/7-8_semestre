Empleados <- read.delim("~/Documents/7-8_semestre/inteligenciaArtificial/practices/practice_5/Empleados.txt")
View(Empleados)

k2 <- kmeans(Empleados[2:10], centers = 2, nstart = 10)
k3 <- kmeans(Empleados[2:10], centers = 3, nstart = 10)
k4 <- kmeans(Empleados[2:10], centers = 4, nstart = 10)
k2

# Método del codo para el número de clusters 
set.seed(123)
SSE <- sapply(2:12,function(k){kmeans(Empleados[2:10], k, nstart=10)$tot.withinss})

plot(2:12, SSE, type = "b", pch = 19, frame = FALSE, xlab = "Numero de cluster", ylab = "Suma total de cuadrados")
abline(v = 4, lty =2)

#Escogemos a 4 cómo número de clusters
k4 <- kmeans(Empleados[2:10], centers = 4, nstart = 10)
k4

k4$cluster
k4$centers
k4$totss
k4$withinss
k4$tot.withinss
k4$size

cluster::clusplot(Empleados[2:10], k4$cluster, color=T, shade=T, main='Empleados')
