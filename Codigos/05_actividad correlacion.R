# Gildardo Gracia Rocha 
# 02/10/2023
# Matricula: 2070834

library(repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")

# Estadisticas descriptivas -----------------------------------------------

mean(erupciones$eruptions)

mean (erupciones$waiting)

sd(erupciones$eruptions)

sd(erupciones$waiting)

var(erupciones$eruptions)

var(erupciones$waiting)

# Hipotesis ---------------------------------------------------------------

#hipoteisis: la hipotesis es alternativa ya que el P-value es mayor de 0.05

# correlación -------------------------------------------------------------

cor.test(erupciones$eruptions, erupciones$waiting)

# Grafica -----------------------------------------------------------------

plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración de las erupciones (min)", pch = 19, col= "skyblue")


# Regreción Lineal --------------------------------------------------------

plot(erupciones$waiting, erupciones$eruptions,
     xlab = "tiempo de espera",
     ylab = "Duración (min)",
     pch = 19)
#abline sirve para desplegar las lineas de tendencia central 

abline(erup.lm,
       col="red")

range(erupciones$waiting)

erup.lm <- lm(erupciones$eruptions ~ erupciones$waiting)

summary(erup.lm) #obtener la significancia 

erupciones$yprima <- -1.874 + 0.075*erupciones$waiting

erupciones$estimados <- erup.lm$fitted.values

erup <- c(80,43,45,53,61,95)

y.pr <- -1.874016 + 0.075628*erup

#aplicar la formula de manera individual ( Y(prima)=alfa + beta(x))

-1.874016 + 0.075628*80
-1.874016 + 0.075628*43
-1.874016 + 0.075628*45
-1.874016 + 0.075628*53
-1.874016 + 0.075628*61
-1.874016 + 0.075628*95

#el rango de los valores de x son mi ventana de prediccion de yprima 
#range(erupciones$waiting)