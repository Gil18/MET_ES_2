# Gildardo Gracia Rocha 
# 28/08/2023
# Matricula: 2070834

# Correlacion 
# 25/09/2023


# importar ----------------------------------------------------------------


setwd("C:/Repositorio/Met_ES/codigos")
cnpy<- read.csv("canopy.csv", header = T)
cnpy$Forest <- as.factor(cnpy$Forest)


# graficas ----------------------------------------------------------------



plot(cnpy$Cnpy, cnpy$LAI4)
#Asociacion positiva

plot(cnpy$Cnpy, cnpy$GLI)
#

plot(cnpy$LAI4, cnpy$GLI)
#


# Personalizacion de grafica  ---------------------------------------------
plot(cnpy$Cnpy, cnpy$LAI4,
     xlab = "Apertura del dosel (%)",
     ylab =  "Area Folear",
     col = "green",
     main = "Bosque escuela")

text(25,1.2, "r= -0.833416")
cor.test(cnpy$Cnpy, cnpy$LAI4)

plot(cnpy$Cnpy, cnpy$GLI,
     xlab = "Apertura del dosel (%)",
     ylab =  "Area Folear",
     col = "pink",
     main = "Bosque escuela")
cor.test(cnpy$Cnpy, cnpy$GLI)

text(25, 40, "r= 0.5457512 ")

plot(cnpy$LAI4, cnpy$GLI,
     xlab = "Apertura del dosel (%)",
     ylab =  "Area Folear",
     col = "skyblue",
     main = "Bosque escuela")

text(1.1, 30, "r= -0.6894101 ")
cor.test(cnpy$LAI4, cnpy$GLI)

