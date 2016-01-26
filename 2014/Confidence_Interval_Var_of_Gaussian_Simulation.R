
n_observations=10000
mu=10
sigma=2

data1=rnorm(n_observations,mean=mu,sd=2)
hist(data1)

n_samples <- 10000
sample_size <- 10
df <- sample_size-1

hist_breaks=seq(0,50,by=0.5)

# For each of the n_samples take the mean my_sample and put it in the 
# vector sample_mean. It is then simple to take the mean and the standard deviation
# of the vector


# This is how Schira calculates it (wrong)
sample_n=NULL
for (i in 1:n_samples) {
  my_sample <- sample(data1,size=sample_size)
  sample_n[i] <- sample_size*var(my_sample) /sigma**2 
}

# This is how most books calculate it (correct)
sample_df <- NULL
for (i in 1:n_samples) {
  my_sample <- sample(data1,size=sample_size)
  sample_df[i] <- df*var(my_sample) /sigma**2 
}


curve(dchisq(x,df),0,50,add=FALSE)
#hist(sample_n,breaks=hist_breaks,freq=F,add=T,border="red")
hist(sample_df,breaks=hist_breaks,freq=F,add=T,border="blue")

