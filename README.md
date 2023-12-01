This repo provides the code and data to run an analysis to estimate the initial growth rate and carrying capacity of an E.coli culture, as well as the results of this analysis.

To carry out this analysis, first exploratory plots of the data are made in plot_data.R, and then two linear models are created in fit_linear_model.R (one for when the culture is undergoing initial exponential growth, and one for when the culture has reached K) to obtain estimates of N0, r, and K for the culture. Finally, the estimates of N0, r, and K are used to plot a model of the culture's growth on top of the data.

**Results:**

I used the data from experiment 3. My estimates for the growth parameters were as follows:

-   N0 = 5125.585

-   r = 4.964e-03

-   K = 4.998e+09

[Estimating population size at t = 4980 min, assuming exponential population growth:]{.underline}

Equation for exponential growth, N = N0 \* exp(r \* t)

N = 5125.585 \* exp(4.964e-03 \* 4980)

N = 5125.585 \* exp(24.72)

N = 2.791e+14

The population size at t = 4980 predicted under logistic growth is 4997910511 (4.997e+09) (calculated with the logistic function created) which is much smaller than the population size predicted under exponential growth. This is because in logistic growth, the growth rate slows down from the initial exponential growth rate.

[Comparing logistic and exponential growth curves:]{.underline}
