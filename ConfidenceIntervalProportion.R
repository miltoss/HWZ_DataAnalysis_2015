

conf.int.prop <- function(p, n, alpha) {
    # Calculates the confidence interval for a proportion.
    d <- qnorm(1 - alpha / 2) * sqrt(p * (1-p) / n)
    cat("With", 1-alpha, "the proportion lies between", p, "+/-", d,  "\n")
    cat("With", 1-alpha, "the proportion lies between", p -d, "and", p + d, "\n")
    return(d)
}

conf.int.prop(p = 180 / 400, n = 400, alpha =0.05 )
