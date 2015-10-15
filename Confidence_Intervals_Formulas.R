
# Define a function for the confidence interval for estimating the mean of a normal distribution
# when we have a sample of n data points and we know the mean sigma of the universe
conf.int.z <- function(xbar, sigma, n, alpha) {
    
    d <- qnorm(1 - alpha / 2) * sigma / sqrt(n) 
    
    cat("With", 1-alpha, "certainty the mean mu lies between", xbar, "+/-", d,  "\n")
    cat("With", 1-alpha, "certainty the mean mu lies between", xbar -d, "and", xbar + d, "\n")

    return(d)
    
}

# Test the function
conf.int.z(xbar = 10, sigma = 2, n = 4, alpha = 0.05)
