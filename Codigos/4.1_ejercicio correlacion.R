# Gildardo Gracia Rocha 
# 28/08/2023
# Matricula: 2070834

#CONJUNTO DE DATOS PARA CORRELACION 

#Creacion d la base 

x <- c(10.0,8.0,13.0,9.0,11.0,14.0,6.0,4.0,12.0,7.0,5.0)

y <- c(7.46,6.77,12.74,7.11,7.81,8.84,6.08,5.39,8.15,6.42,5.73)

# crear un data frame con las variables x and y ---------------------------

d3 <- data.frame(x,y)

# estadisticas descriptivas -----------------------------------------------

mean(d3$x)
var(d3$x)
mean(d3$y)
var(d3$y)

# aplicacion de la correlacion  -------------------------------------------

cor.test(d3$x, d3$y)

# grafica -----------------------------------------------------------------

plot(d3$x, d3$y,
     pch=19,
     xlab = "valor de x",
     ylab = "valor de y",
     col= "skyblue",
     text(6,10, "r=0.8162"))