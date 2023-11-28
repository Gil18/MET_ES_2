# Gildardo Gracia Rocha 
# 28/11/2023
# Matricula: 2070834


# Importar datos ----------------------------------------------------------

#Funcion read.csv (sirve para importar datos csv a R)
setwd("C:/Repositorio 2/Met_ES_2/codigos")

head(Datos Clima) #funion head (sirve para ver los primeros 6 datos)


# Descriptivas ------------------------------------------------------------
#medidas de tendencia central media, mediana, rango

mean(Datos_Clima$Tem.Max) # 26.41071
median(Datos_Clima$Tem.Max)# 27.6
range(Datos_Clima$Tem.Max)# 7.3 37.6
fivenum(Datos_Clima$Tem.Max)# 7.30 22.65 27.60 32.05 37.60

mean(Datos_Clima$Tem.Min) #12.50357
median(Datos_Clima$Tem.Min) #15.35
range(Datos_Clima$Tem.Min) #-0.2 20.4
fivenum(Datos_Clima$Tem.Min) #-0.20  5.55 15.35 17.65 20.40

# medias de dispersiondesviacion estandar, varianza 

sd(Datos_Clima$Tem.Max) #7.433176
var(Datos_Clima$Tem.Max) #55.2521

sd(Datos_Clima$Tem.Min) #6.644601
var(Datos_Clima$Tem.Min) #44.15073

# Graficas ----------------------------------------------------------------
boxplot(Datos_Clima$Tem.Max, Datos_Clima$Tem.Min, xlab = "Temperatura Maxima",
        ylab = "Temperatura Minima", pch = 19, col= "skyblue")

# Prueba T ------------------------------------------------------------
t.test(Datos_Clima$Tem.Max, mu = 27.6)
#t= -0.84662, df= 27, p-value =0.4046

t.test(Datos_Clima$Tem.Min, mu =15.35)
#t= -2.2668, df = 27, p-value = 0.03163

cor.test(Datos_Clima$Tem.Max, Datos_Clima$Tem.Min)
#t = 7.9593, df = 26, p-value = 1.946e-08

summary(Datos_Clima)
#Tem.Max         Tem.Min      
#Min.   : 7.30   Min.   :-0.200  
#1st Qu.:22.68   1st Qu.: 5.675  
#Median :27.60   Median :15.350  
#Mean   :26.41   Mean   :12.504  
#3rd Qu.:31.73   3rd Qu.:17.625  
#Max.   :37.60   Max.   :20.400  


# Hipotesis ---------------------------------------------------------------

# la correlacion no es igual a cero y es igual a 0.8420266 a cero por lo tanto
#es una hipotesis alternativa
