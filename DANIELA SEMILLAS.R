# t-test dependientes ----------------------------------------------------------------------
stewd("C:\DANIELA\D_EXPERIMENTAL")
semilla <- read.csv ("mainproduccion.csv", header = T)

semilla$Tiempo <- as.factor(semilla$Tiempo)
# Grafica boxplot
boxplot(semilla$Tiempo , semilla$Kgsem)
boxp