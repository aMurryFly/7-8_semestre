# Práctica 3: Reglas de asociación

#1. IMPORTANDO DATASET

DatosCancer <- read.table("~/Documents/7-8_semestre/inteligenciaArtificial/practices/practice_3/1Cancer.txt", header=T, sep="\t")
DatosCancer

# 2. PLOTTING  for visual checking

# Radio - Textura
plot(DatosCancer$Radius~DatosCancer$Texture)
# Radio - Perímetro
plot(DatosCancer$Radius~DatosCancer$Perimeter)
# Radio - Area
plot(DatosCancer$Radius~DatosCancer$Area)	    
# Radio - Suavidad
plot(DatosCancer$Radius~DatosCancer$Smoothness)


# 3. GET CORRELATION COEFFICIENTES
MCorrelaciones <- cor(DatosCancer)
MCorrelaciones

# Redondear a tres decimales / Round to three decimal 
MCorrelaciones <- round(cor(DatosCancer), 3)
MCorrelaciones


# 4. PLOT CORRELATIONS
install.packages("corrplot")
library(corrplot)
corrplot(MCorrelaciones)

# Some example plots

#corrplot(MCorrelaciones, method="circle")
#corrplot(MCorrelaciones, method="square")
#corrplot(MCorrelaciones, method="ellipse")
#corrplot(MCorrelaciones, method="number")
#corrplot(MCorrelaciones, method="shade")
#corrplot(MCorrelaciones, method="pie")
#corrplot(MCorrelaciones, method="color")
#corrplot(MCorrelaciones, type="upper", tl.srt=45)

# Final matrix to analyze
corrplot(MCorrelaciones, method="number", type="upper", tl.srt=45)




