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

mortalidad1 <- mortalidad1[with(mortalidad1, order(mortalidad1$Años)), ]
mortalidad1

mSIDA = mortalidad1[mortalidad1$Causa=="SIDA",]
mSIDA

mSIDA %>%
  ggplot(aes(Años, Cantidad, label = Cantidad, color = Causa)) +
  geom_label()

mTumores = mortalidad1[mortalidad1$Causa=="Tumores",]
mTumores

mTumores %>%
  ggplot(aes(Años, Cantidad, label = Cantidad, color = Causa)) +
  geom_label()

mEndocrinas = mortalidad1[mortalidad1$Causa=="Endocrinas",]
mEndocrinas

mEndocrinas %>%
  ggplot(aes(Años, Cantidad, label = Cantidad, color = Causa)) +
  geom_label()

mCirculatorio = mortalidad1[mortalidad1$Causa=="Scirculatorio",]
mCirculatorio


mCirculatorio %>%
  ggplot(aes(Años, Cantidad, label = Cantidad, color = Causa)) +
  geom_label()

mRespiratorio = mortalidad1[mortalidad1$Causa=="Srespiratorio",]
mRespiratorio

mRespiratorio %>%
  ggplot(aes(Años, Cantidad, label = Cantidad, color = Causa)) +
  geom_label()

mDigestivo = mortalidad1[mortalidad1$Causa=="Sdigestivo",]
mDigestivo

mDigestivo%>%
  ggplot(aes(Años, Cantidad, label = Cantidad, color = Causa)) +
  geom_label()

mATransito = mortalidad1[mortalidad1$Causa=="Atransito",]
mATransito

mATransito%>%
  ggplot(aes(Años, Cantidad, label = Cantidad, color = Causa)) +
  geom_label()


mCExternas = mortalidad1[mortalidad1$Causa=="Cexterna",]
mCExternas

mCExternas%>%
  ggplot(aes(Años, Cantidad, label = Cantidad, color = Causa)) +
  geom_label()

mLintensionales = mortalidad1[mortalidad1$Causa=="Lintensionales",]
mLintensionales

mLintensionales%>%
  ggplot(aes(Años, Cantidad, label = Cantidad, color = Causa)) +
  geom_label()


#Causas de muertes en Chile en desde el 2010 al 2014
mortalidad2010 = mortalidad1[mortalidad$Años==2010,]
mortalidad2010

mortalidad2010 %>%
  ggplot(aes(Causa, Cantidad, label = Cantidad, color = Causa)) +
  geom_label()

mortalidad2011 = mortalidad1[mortalidad$Años==2011,]
mortalidad2011

mortalidad2011 %>%
  ggplot(aes(Causa, Cantidad, label = Cantidad, color = Causa)) +
  geom_label()

mortalidad2012 = mortalidad1[mortalidad$Años==2012,]
mortalidad2012

mortalidad2012 %>%
  ggplot(aes(Causa, Cantidad, label = Cantidad, color = Causa)) +
  geom_label()

mortalidad2013 = mortalidad1[mortalidad$Años==2013,]
mortalidad2013

mortalidad2013 %>%
  ggplot(aes(Causa, Cantidad, label = Cantidad, color = Causa)) +
  geom_label()

mortalidad2014 = mortalidad1[mortalidad$Años==2014,]
mortalidad2014

mortalidad2014 %>%
  ggplot(aes(Causa, Cantidad, label = Causa, color = Cantidad)) +
  geom_label()
