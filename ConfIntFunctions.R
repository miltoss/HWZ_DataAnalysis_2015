conf.int.z <- function(xbar, sigma, n, alpha) {
    
    d <- qnorm(1 - alpha / 2) * sigma / sqrt(n) 
    
    cat("With", 1-alpha, "certainty the mean mu lies between", xbar, "+/-", d,  "\n")
    cat("With", 1-alpha, "certainty the mean mu lies between", xbar -d, "and", xbar + d, "\n")
    
    return(d)
    
}

conf.int.t <- function(xbar, s, n, alpha) {
    
    d <- qt(1 - alpha / 2, df = n - 1) * s / sqrt(n) 
    
    cat("With", 1-alpha, "certainty the mean mu lies between", xbar, "+/-", d,  "\n")
    cat("With", 1-alpha, "certainty the mean mu lies between", xbar -d, "and", xbar + d, "\n")
    
    return(d)
    
}



n.int.z <- function(d, xbar, sigma, alpha) {
    
    n <- qnorm(1 - alpha / 2) * sigma / d
    n <- n**2
    return(n)
    
}
n.int.z(d = 1.95, xbar = 2.5, sigma = 2, alpha = 0.05)


conf.int.prop <- function(p, n, alpha) {
    d <- qnorm(1 - alpha / 2) * sqrt(p * (1-p) / n)
    cat("With", 1-alpha, "the proportion lies between", p, "+/-", d,  "\n")
    cat("With", 1-alpha, "the proportion lies between", p -d, "and", p + d, "\n")
    return(d)
}

conf.int.prop(p = 0.5, n = 100, alpha =0.05 )


