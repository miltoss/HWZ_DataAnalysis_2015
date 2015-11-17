
# Generate a Student t distribution from the definition

par(mfrow = c(1,1))

# Size of the universe
n_datapoints=100000

# Number of degrees of freedom
n_df=3

# Standard normal distribution. 
# Generate and plot data and theoretical curve.
data1=rnorm(n_datapoints)
hist(data1,freq=F,add=F,breaks=50)
curve(dnorm(x),-5,5,add=T)

# chisq distribution with n_df degrees of freedom. 
# Generate and plot data and theoretical curve.
data2=rchisq(n_datapoints,n_df)
hist(data2,freq=F,add=F)
curve(dchisq(x,n_df),0,25,add=T,breaks=100)x


# Generate the t distribution from the previous two
data3=data1/sqrt(data2)

# Plot data and t?curveheoretical curve.
hist(data3,freq=F,add=F,breaks=50)
curve(dt(x,n_df),-40,40,add=T,col="red")
