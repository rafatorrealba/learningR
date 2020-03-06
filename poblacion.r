library(tidyverse)
library(dslabs)
library(dplyr)
library(readr)


lapintana <- read_csv("/home/rtorrealba/learningR/data/lapintana.csv")
lapintana

lapintana %>%
  ggplot(aes(x=Fecha, y=Hombres&Mujeres)) +
  geom_point()
  
lapintana %>%
  ggplot(aes(Fecha, Mujeres, label= Fecha)) +
  geom_label()

ggplot(data = lapintana) +
  geom_path(mapping = aes(x = Hombres, y = Fecha,))
  
ggplot(data = poblacion_2002_2020) +
  geom_path(mapping = aes(x = edad, y = a2002,))


poblacion <- read_csv("/home/rtorrealba/learningR/data/poblacion2020.csv")

proyeccion <- read_csv("/home/rtorrealba/learningR/data/proyeccion.csv")

ggplot(data = proyeccion) +
  geom_label(mapping = aes(x = Year, y = Population, label = Sexo))

  ggplot(data = proyeccion) +
  geom_point(mapping = aes(x = Year, y = Population))
