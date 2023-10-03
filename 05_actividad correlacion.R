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