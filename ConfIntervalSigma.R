
conf.int.var <- function(v, n, alpha) {
    
    # Calculate the confidence interval of the variance of a proportion
    
    fh <- n -1
    upper <- (n - 1) * v / qchisq(alpha / 2 , df = fh)
    lower <- (n - 1) * v / qchisq(1 - alpha / 2 , df = fh)
    
    result <- c(lower, upper)
    
    return(result)
    
}


conf.int.var(v = 1, n = 3, alpha = 0.05)