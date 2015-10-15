
conf.int.z <- function(xbar, S, n, alpha) {
    
    d <- qnorm(1 - alpha / 2) * S / sqrt(n) 
    
    return(d)
    
}
