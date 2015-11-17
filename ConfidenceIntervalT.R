
conf.int.t <- function(xbar, S, n, alpha) {

    
    d <- qt(1 - alpha / 2, n - 1) * S / sqrt(n) 
    
    cat("With", 1-alpha, "certainty the mean mu lies between", xbar, "+/-", d,  "\n")
    cat("With", 1-alpha, "certainty the mean mu lies between", xbar -d, "and", xbar + d, "\n")
    
    return(d)
    
}

# Test the function
conf.int.t(xbar = 1100, S = 30, n = 9, alpha = 0.05)