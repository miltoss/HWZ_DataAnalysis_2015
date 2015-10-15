
# Clean up memory
rm(list = ls())

# Split the plot window to two columns
par(mfrow = c(1, 2))


# Simulate Universe (Grundgesamtheit) in vector data1
size_universe = 100000
# Generate a normal distribution with mean=mu and sd=sigma
mu = 100; sigma = 20

# Sample size in one experiment
sample_size = 16

# Times to repeat the experiment
n_samples=5000


# Generate the universe
universe = rnorm(size_universe,mean=mu,sd=sigma)
max(universe)


# Plot the universe
hist(universe,
     xlim = c(mu - 5 * sigma, mu + 5 * sigma),
     freq = F)

mean(universe); sd(universe)
curve(dnorm(x, mean = mu, sd = sigma), add = T)
#qqnorm(data1)




# Simulate the principle behind the above calculation.
#-----------------------------------------------------------------
# Take n_samples samples each of size = sample_size
# Samples are taken with replacement (mit Zuruecklegen).
# To see how the sample mean of a sample of size sample_size is distributed,
# take many samples, calculate the mean of each sample and see how 
# these means are distributed.



# For each of the n_samples take the mean my_sample and put it in the 
# vector sample_mean. It is then simple to take the mean and the standard deviation
# of the vector


sample_mean = NULL
head(sample_mean)


for (i in 1:n_samples) {
 
   # Take the ith sample of size: sample_size 
   my_sample = sample(universe, size = sample_size)
   # Calculate and store the mean of the sample
   sample_mean[i] = mean(my_sample)  
   
   # Just to illustrate dump the first 5 samples on the screen
   if (i %in% 1:5) {
       cat("Sample number:", i,
           ", Sample values:", my_sample, 
           ", Sample Mean: ", sample_mean[i],
           "\n")
   }
   
   # Let' s see how the vector of the means of the 5 samples looks like
   if (i == 5) {
       cat("\n", 
           "Vector of means:", sample_mean, "\n",
           "Mean of 5 means:", mean(sample_mean), "\n",
           ", Standard deviation of 5 means", sd(sample_mean), "\n"
           )
       
   }
}


# Is the mean normally distributed? A small p-value (e.g. under 0.05 indicates that it is not.)
shapiro.test(sample_mean)
#qqnorm(sample_mean)
cat("The mean of the sample means is: ", mean(sample_mean))
cat("The standard deviation of the sample means is: ", sd(sample_mean))

hist(sample_mean,
     xlim = c(mu - 5 * sigma, mu + 5 * sigma),
     freq = F)




