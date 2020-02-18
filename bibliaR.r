#Analisis de eficiencia en el consumo de combustible motores de carros de 4 marcas diferentes 
#Librerias necesarias para el analisis
library(tidyverse)
library(nycflights13, gapminder)

#Tabla para el análisis, carros en USA con tamaño del motor y eficiencia de consumo de combustible
mpg

#Grafica, tamaño del motor del carro(displ) vs eficiencia de cunsumo de gasolina (hwy)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

#Grafica de, eficiencia del consumo de gasolina(hwy) del carro vs el tamaño del motor(displ) resaltando la marca del motor
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = hwy, y = displ, color = manufacturer))