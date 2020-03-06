install.packages(gdata)

library(tidyverse)
library(dslabs)
library(dplyr)



mortalidad <- read_csv("/home/rtorrealba/learningR/data/mortalidad_cl.csv")
data(mortalidad)

mortalidad

names (mortalidad) = c("Codigo", "Causa", "AñosID", "Años", "Cantidad", "porHabitantes100")
mortalidad

mortalidad1 = mortalidad[,c("Causa", "Años", "Cantidad")]

mortalidad1

mortalidad2010 = mortalidad1[mortalidad$Años==2010,]
mortalidad2010


mortalidad2010 %>%
  ggplot(aes(Cantidad, Causa, label = Cantidad, color = Causa)) +
  geom_label()
