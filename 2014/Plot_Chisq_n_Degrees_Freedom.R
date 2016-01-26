
n_df <- 3
curve(dchisq(x, n_df), 0, 20)
data1=rchisq(5000, n_df)
hist(data1, freq=F, add=T, breaks=100)

mean(data1)
var(data1)
sd(data1)

shapiro.test(data1)
