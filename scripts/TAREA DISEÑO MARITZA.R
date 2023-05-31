#DHR
#25/05/2023


# Importar datos

Germ  <- read.csv("DANIELAH/GERMINACION.csv" ,header = T)
Germ$Trat <- as.factor(Germ$Trat)

# Grafica 
boxplot(Germ$Pger ~ Germ$Trat,
col="pink",
xlab ="Tratamientos Germinativos",
ylab ="% Germinacion")
# ordenar tratamientos
levels(Germ$Trat)
Germ$Trat <- as.factor(Germ$Trat, levels =c("Ctrl", "EM", "aGc","RA", "H2SO4"))
levels(Germ$TRAT)
boxplot(Germ$Pger ~ Germ$Trat,
        col= "blue")
#Funcion tapply
tapply(Germ$PG, Germ$Trat, mean)
tapply(Germ$PG, Germ$trat, var)

#ANOVA
germ.aov <- aov(Germ$Pger ~ Germ$Trat)
summary(germ.aov)

#prueba de tuckey
TukeyHSD(germ.aov, conf.level = 0.95)
plot(TukeyHSD(germ.aov), las=1, col="darkblue")
                                        






