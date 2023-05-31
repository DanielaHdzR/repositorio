#DHR
#25/05/2023


# Importar datos
setwd("C:/Users/Usuario.PC17.001/Documents")
Germ  <- read.csv("DANIELAH/GERMINACION.csv" ,header = T)
Germ$Trat <- as.factor(Germ$Trat)

# Grafica 
boxplot(Germ$Pger ~ Germ$Trat,
col="pink",
xlab ="Tratamientos Germinativos",
ylab ="% Germinacion")
# ordenar tratamientos
levels(Germ$Trat)
Germ$Trat <- factor(Germ$Trat, levels = c("Ctrl","EM","RA","aGc","H2SO4"))
levels(Germ$TRAT)
boxplot(Germ$Pger ~ Germ$Trat,
        col= "blue")
#Funcion tapply
tapply(Germ$Pger, Germ$Trat, mean)
tapply(Germ$Pger, Germ$Trat, var)

#ANOVA
germ.aov <- aov(Germ$Pger ~ Germ$Trat)
summary(germ.aov)

#prueba de tuckey
TukeyHSD(germ.aov, conf.level = 0.95)
plot(TukeyHSD(germ.aov), las=1, col="darkblue")
##entre Em- Ctrl diferencia de 4% SI hay dif
##entre Agam- Ctrl diferencia de 55 y SI hay dif
##entre AgCal- Ctrl diferencia de 3.5% y SI hay dif

plot(TukeyHSD(germ.aov), las =1, col="orange")


# agregar letras de diferencias------------------------------------------------------------------


boxplot(Germ$Pger ~ Germ$"Trat",
        col= "pink",
        xlab = "Tratamientos Germinativos",
        ylab = "% GERMINACION",
        ylim = c(0,10))
text(1,4.2,"a", col="red")
text(2,8.3,"b", col="blue")
text(3,9.4,"b", col="blue")
text(4,7.4,"b" , col="blue")
text(5,3.3,"a", col="red")


                                        






