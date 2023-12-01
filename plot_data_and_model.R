#Script to plot data and model

growth_data <- read.csv("experiment3.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

#Values are pulled from the linear models in fit_linear_model
N0 <- 5125.585 #
  
r <- 4.964e-03 #
  
K <- 4.998e+09 #

curve <- ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')

curve

#Save graph
ggsave(filename = "growth_curve.png",
       plot = curve,
       height = 10.5, width = 14.8,
       units = "cm")

#Save package versions
sink(file = "package-versions.txt")
sessionInfo()
sink()

logistic_fun(4980)
