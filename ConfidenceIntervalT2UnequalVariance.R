

conf.int.t2.unequalV <- function(DeltaXbar, n1, n2, S1, S2, alpha = 0.95) {
    
    
    df = ( S1**2 / n1 + S2**2 / n2 )**2 / (  (S1**2 / n1)**2 /(n1 - 1) + (S2**2 / n2)**2 /(n2 - 1)      )
    cat("df =", df,  "\n")
    
    cat("Quantile =", qt(1 - alpha / 2, df), "\n")
    
    ConfInt <- qt(1 - alpha / 2, df) * sqrt( S1**2 / n1 + S2**2 / n2)
    
    cat("With", 1-alpha, "certainty the DeltaMu lies between", DeltaXbar, "+/-", ConfInt,  "\n")
    cat("With", 1-alpha, "certainty the DeltaMu lies between", DeltaXbar -ConfInt, "and", DeltaXbar + ConfInt, "\n")
    
    return(ConfInt)
    
}


d = 132.86 - 127.44
conf.int.t2.unequalV(DeltaXbar = d, n1 = 8, n2 = 21, S1 = 15.34, S2 = 18.23, alpha = 0.05)


d = 2
conf.int.t2.unequalV(DeltaXbar = d, n1 = 100, n2 = 100, S1 = 2, S2 = 0.5, alpha = 0.05)


d = -4
conf.int.t2.unequalV(DeltaXbar = d, n1 = 9, n2 = 9, S1 = 1.5, S2 = 1.8, alpha = 0.10)




