
# Simulate Universe (Grundgesamtheit) in vector data1
size_universe <- 5000
# Generate a normal distribution with mean=mu and sd=sigma
mu <- 10
sigma <- 2

# Uncomment one of the next three lines to generate a 
# normal or chisq or F distribution.
data1=rnorm(size_universe, mean=mu, sd=sigma)
#data1=rchisq(size_universe,df1)
#data1=rf(size_universe,df1=2,df2=3)
max(data1)


# Plot and test for normality.
# hist(data1,breaks=100)
mean(data1)
sd(data1)
shapiro.test(data1)
#qqnorm(data1)


# World of Analyst: take data and analyse them
alpha <- 0.05
sample_size <- 16


# Estimation according to formula for confidence interval of mean.
#-----------------------------------------------------------------
# Take one sample (reality) and estimate sigma. Standard estimation process.
sigma_sample <- sample(data1, size = sample_size);
mean(sigma_sample)
# x_strich=mean(my_sample) 
"The sample mean is: " 
# x_strich
s=sd(sigma_sample) 
v=var(sigma_sample)
"The sample standard deviation and variance (and their point estimates) are: "
c(s,v)


# Degrees of freedom
df <- sample_size-1
df


# Point estimation of sigma, variance: 

# Lower confidence limit on variance: 
lower_v <-  sample_size * v/(qchisq(1-alpha/2,df))
# Upper end of estimation interval:
lower_v
# Upper confidence limit on variance: 
upper_v <-  sample_size*v/(qchisq(alpha/2,df))
upper_v

"Variances:"
c(lower_v,v,upper_v)
"Standard Deviations:"
sqrt(c(lower_v,v,upper_v))




# Simulate the principle behind the above calculation.
#-----------------------------------------------------------------
# Take n_samples samples each of size = sample_size
# Samples are taken with replacement (mit Zuruecklegen).
# To see how the sample mean of a sample of size sample_size is distributed,
# take many samples, calculate the mean of each sample and see how 
# these means are distributed.
n_samples=5000


# For each of the n_samples take the mean my_sample and put it in the 
# vector sample_mean. It is then simple to take the mean and the standard deviation
# of the vector
sample_v <- NULL
for (i in 1:n_samples) {
  my_sample <- sample(data1, size = sample_size)
  sample_v[i] <- var(my_sample)  
}

hist(sample_v, col = 'blue', add = F, xlim = c(0, 20), ylim=c(0, 1), freq=F, breaks=seq(0, 20, by=0.2))
hist(data1, add=T, freq=F, breaks=seq(0, 20, by=0.2))

# Draw lines for the confidence interval calculated previously.
abline(v = lower_v, col="blue")
abline(v = upper_v, col="blue")
abline(v = v, col="blue")
abline(v = sigma**2, col="red")



