# Homework excercise

# Familiarise yourself with basic functions related to probability
# distributions. Run the first 

# Set window to 2-column graph
par(mfrow = c(1, 2))

# This is the sample size
n_sample = 10000


# Block 1: Uniform distribution. First plot the curve. Then generate 
# a sample of size n_sample and 
curve(dunif(x), from = -1, to = 2)
x <- runif(n_sample)
hist(x, xlim = c(-1, 2))


# Block 2: Do the same with the normal distribution: 
# need the extra parameters mean, sd. 
# They have default values. Which are these values?

mu <- 5
sigma <- 2

curve(dnorm(x, mean = mu, sd = sigma), 
      from = mu - 5 * sigma, 
      to = mu + 5 * sigma)

x <- rnorm(n_sample, mean = mu, sd = sigma)
hist(x, xlim = c(mu - 5 * sigma, mu + 5 * sigma))


# Block 3: do this a s hoework excercise.
# Chisq distribution: needs parameter df (degress of freedom). 
# There is no default value. Try with df = 1, 2, 3 
# Try to put several on the same graph (add = T when calling curve or hist)
# The distribution is chisq in R (analog unif, norm)







# Set window back to 1 x 1 column graph
par(mfrow = c(1, 2))
