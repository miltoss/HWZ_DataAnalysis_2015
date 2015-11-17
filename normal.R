

# Draw a standard normal distribution and its cumulative
par(mfrow = c(1,2))
curve(dnorm,-5,5)
curve(pnorm,-5,5)

# Area under curve until q
pnorm(q = 1.96)
# Which q covers area p?
qnorm(p = 0.975)

