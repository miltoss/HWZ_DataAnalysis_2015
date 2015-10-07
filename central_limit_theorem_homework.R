
# HOMEWORK EXCERCISE

# This is a simulation of the central limit theorem 
# (Chapter 6.4 of the book)
# The idea is the following: Iteratively generate a vector data_dist of random numbers
# following a probability density function (for example the uniform distribution).
# There will be n_samples iterations (i.e. generated vectors)
# The vector has length (n_observations). Add each vector to a sum vector
# data_sum (update the sum vector). When finished plot the resulting vector
# as a histogram and check if it is a normal distribution.




# This is the size of one random sample
n_observations = 5000

# This is the number of random samples to draw. Vary this number
# from 1 to 5000 and see what happens. For example, try the following
# value sfor n: 1, 2, 3, 5, 10, 100, 1,000, 10,000
n_samples = 1000


# Take n_samples samples each of sample_size

# Initialise vector with zeros
data_sum = rep(0, n_observations)
# Check some things out
length(data_sum)
head(data_sum)

# Iteratively generate a sample and add it to the sum
for (i in 1:n_samples) {
    
    # Fill in the code here. Generate vector data_dist and 
    # add it to data_sum
    
    
}


# Let's see what came out:


# Split the plot window in two columns
par(mfrow = c(1, 2))


# Plot the resulting distribution
hist(data_sum)

# Test resulting distribution for normality in a graphical way.
# If a straight line is drawn, then a normal distribution (data_sum)
# has been created
qqnorm(data_sum)

# Reset the plot window
par(mfrow = c(1, 1))

# Another way to test normality
# If the p-value printed on the console 
# is under 0.05, then we know distribution is not normal
shapiro.test(data_sum)



