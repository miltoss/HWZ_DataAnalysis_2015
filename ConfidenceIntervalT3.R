
conf.int.prop <- function(p, n, alpha) {
    # Calculates the confidence interval for a proportion.
    d <- qnorm(1 - alpha / 2) * sqrt(p * (1-p) / n)
    cat("With", 1-alpha, "the proportion lies between", p, "+/-", d,  "\n")
    cat("With", 1-alpha, "the proportion lies between", p -d, "and", p + d, "\n")
    return(d)
}
    
conf.int.prop(p = 0.55, n = 1000, alpha = 0.05)

n.int.prop <- function(d, p, alpha) {
    
    n <- qnorm(1 - alpha / 2)**2 * p * (1 - p) / d**2
    
    cat("The necessary sample size is", n,  "\n")
    
    return(n)
    
}

n.int.prop(d = 0.03, p = 0.55, alpha = 0.05)