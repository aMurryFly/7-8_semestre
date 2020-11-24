# Import table
# Empleados <- read.delim("~/Documents/7-8_semestre/inteligenciaArtificial/practices/practice_5/Empleados.txt")

Empleados
#Usamos el método euclideano para las distancias
DistEuclidiana<- round(dist(Empleados[2:10], method ="euclidean"),2)
DistEuclidiana
#Hacemos el clustering y gráficamos
Jerarquico <- hclust(DistEuclidiana)
plot(Jerarquico)

rect.hclust(Jerarquico, k=4, border= 2:6) # Esto es para el color

#Hacemos los cortes de cada cluster
Clusters <- cutree (Jerarquico, 4) 
Clusters
table(Clusters)

require(rattle)
centros <- centers.hclust(Empleados[2:10], Jerarquico, nclust = 4)
centros



# DISTANCIAS CON Manhattan

DistManhattan<- round(dist(Empleados[2:10], method ="manhattan"),2)
DistManhattan
JerarquicoM <- hclust(DistManhattan)
plot(JerarquicoM)


#Hacemos los cortes de cada cluster
rect.hclust(JerarquicoM, k=4, border= 2:6)
ClustersM <- cutree (JerarquicoM, 4) 
ClustersM
table(ClustersM)

require(rattle)
centrosM <- centers.hclust(Empleados[2:10], JerarquicoM, nclust = 4)
centrosM



# DISTANCIAS CON Manhattan

DistChebyshev<- round(dist(Empleados[2:10], method ="maximum"),2)
DistChebyshev
JerarquicoC <- hclust(DistChebyshev)
plot(JerarquicoC)


#Hacemos los cortes de cada cluster
rect.hclust(JerarquicoC, k=4, border= 2:6)
ClustersC <- cutree (JerarquicoC, 4) 
ClustersC
table(ClustersC)

require(rattle)
centrosC <- centers.hclust(Empleados[2:10], JerarquicoC, nclust = 4)
centrosC
