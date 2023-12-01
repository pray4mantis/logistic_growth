This repo provides the code and data to run an analysis to estimate the initial growth rate and carrying capacity of an E.coli culture, as well as the results of this analysis.

To carry out this analysis, first exploratory plots of the data are made in plot_data.R, and then two linear models are created in fit_linear_model.R (one for when the culture is undergoing initial exponential growth, and one for when the culture has reached K) to obtain estimates of N0, r, and K for the culture. Finally, the estimates of N0, r, and K are used to plot a model of the culture's growth on top of the data.

#Results
I used the data from experiment 3. My estimates for the growth parameters were as follows:

N0 = 5125.585
  
r = 4.964e-03
  
K = 4.998e+09
