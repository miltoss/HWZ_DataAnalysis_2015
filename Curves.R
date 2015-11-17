

# Draw a standard normal distribution and its cumulative
par(mfrow = c(1,2))
curve(dnorm,-5,5)
curve(pnorm,-5,5)

# Area under curve until q
pnorm(q = 1.96)
# Which q covers area p?
qnorm(p = 0.975)


curve(dt(x, df = 2),-5,5, add=FALSE)
curve(dt(x,1),-5,5, add=TRUE)

curve(dchisq(x,3),0,100,add=FALSE)
curve(dchisq(x,10),0,100,add=TRUE)