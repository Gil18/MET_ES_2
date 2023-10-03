# Gildardo Gracia Rocha 
# 05/09/2023
# Matricula: 2070834

# Dos tratamiento, un grupo de plantas 
# prueba de t independientes 




# importacion de datos ----------------------------------------------------

setwd("C:/Repositorio/Met_ES/codigos")
tratamiento <- read.csv("tratamiento.csv", header = T)


# Descriptivas ------------------------------------------------------------

# usar la libreria dplyr para seleccionar datos mediante rescripciones 

library(dplyr)

TA <-tratamiento %>% 
  filter(tratamiento == "TA")

TB <-tratamiento %>% 
  filter(tratamiento == "TB")

mean(TA$altura)
mean(TB$altura)


# Grafica ----------------------------------------------------------------

boxplot(tratamiento$altura ~ tratamiento$tratamiento,
        xlab = "tratamiento",
        ylab = "indice de Esbeltes",
        main = "tratamiento Gil")

t.test (tratamiento$altura ~ tratamiento$tratamiento)