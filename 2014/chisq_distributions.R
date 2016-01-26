# Chisq distributions for different degrees of freedom


curve(dchisq(x, 8), 0, 50, add=TRUE)
curve(dchisq(x, 15), 0, 50, add=TRUE)
curve(dchisq(x, 25), 0, 50, add=TRUE)


# Generate a chisq distribution from the definition:
# n_df independent normal distributions squared, then added.
# n_df will be the number of degrees of freedom
# of the resulting chisq distribution
# Each normal distribution will have a size n_observations.

n_observations <- 5000
n_df <- 3

# data_basis is the generated normal distribution that will be squared and added.
# data_sum is the resulting sum which will be chisq distributed.
data_sum <- rep(0, n_observations)
for (i in 1:n_df) {
  data_basis <- rnorm(n_observations)
  data_sum <- data_sum+data_basis**2
}
# Plot the generated distribution as a histogram
hist(data_sum, freq=F, breaks=100)
# Verify that the mean is n_df and the standard deviation is 2*n_df
mean(data_sum)
var(data_sum)


# Draw the theoretical chisq distribution for n_df degrees of 
# freedom to see how nicely it fits.
curve(dchisq(x, n_df), 0, 50, add=TRUE)

# Check if the resulting distribution is normal
# Shapiro-Wilk normality test: Null hypothesis is that the distribution is Gaussian.
# So small p-values reject null hypothesis (distribution is not Gaussian).
# http://en.wikipedia.org/wiki/Shapiro%E2%80%93Wilk_test
# https://www.youtube.com/watch?v=UJmd_Uzsltwad.test
# As you can see, for small n_df the null hypothesis that 
# data_sum is gaussian is easily rejected (small p-value).
# However, for many degress of freedom, the resulting
# chisq distributions if approaching a gaussian.
shapiro.test(data_sum)
qqnorm(data_sum)

