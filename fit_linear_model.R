#Script to estimate the model parameters using a linear approximation

install.packages('dplyr')
library(dplyr)

growth_data <- read.csv("experiment3.csv")

#Case 1. K >> N0, t is small

data_subset1 <- growth_data %>% filter(t<2500) %>% mutate(N_log = log(N))

#Creating a linear model for the very start of the graph when the growth rate = r
#This model shows the relationship between log(N) and T
#So the intercept is log(N0), and the t is the gradient, or r
model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

#Case 2. N(t) = K

data_subset2 <- growth_data %>% filter(t>4000)

#This is a linear model for the end of the graph when N = K
#The intercept shows you an estimate of K
model2 <- lm(N ~ 1, data_subset2)
summary(model2)
