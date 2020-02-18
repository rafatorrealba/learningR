install.packages("tidyverse")
install.packages("dplyr")

library(tidyverse)
library(dslabs)
library(dplyr)
data(murders)

murders %>%
  ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()

max(murders$total)  
i_max <- which.max(murders$total)
i_max
murders$state[i_max]

murders$state[which.max(murders$total)]

sort(murders$total)
x <- c(31, 4, 15, 92, 65)
x
sort(x)

order(x)
index <- order(x)
index
x[index]

order(murders$total)

index <- murders$total

murders$abb[index]
rank(index)

murders$state[which.max(murders$population)]
max(murders$population)

murders_rate <- murders$total/murders$population*100000
murders_rate

murders$state[order(murders_rate, decreasing = TRUE)]

index2 <-murders_rate <= 0.71
index2
murders$state[index2]

west <- murders$region == "West"
safe <- murders_rate <= 1
index3 <- safe & west
murders$state[index3]

murders <- mutate(murders, rate=total/population*100000)
murders <- mutate(murders, percentage=total*100/population)
murders

filter(murders, rate <= 0.71)