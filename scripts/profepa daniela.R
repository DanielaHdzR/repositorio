# Daniela hernandez 
# iMPORTAR 

profepa_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepaaa <- read.csv(profepa_url ,encoding = "latin1")
prof.url2 <- paste0((""))
summary(profepaaa)
profepaaa$Operativo == max(profepaaa$Operativo)

max.oper <- subset(profepaaa, profepaaa$Operativo == max(profepaaa$Operativo))

boxplot(profepaaa$Recorrido)
profepa.SOC <- subset(profepaaa, profepaaa$Operativo != max(profepaaa$Operativo))

boxplot(profepa.SOC$Operativo)