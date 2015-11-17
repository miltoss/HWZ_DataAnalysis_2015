
pooled.variance <- function (n1, n2, S1, S2)
{
    df1 = n1 -1
    df2 = n2 -1
    
   V = ( df1 * S1**2  +  df2 * S2**2 ) / (df1 + df2)   
    
   return (V)
  
    
}

conf.int.t2 <- function(DeltaXbar, n1, n2, S1, S2, alpha = 0.95) {
    
    Sp2 <- pooled.variance(n1, n2, S1, S2)
    cat("Pooled Variance", Sp2,  "\n")
    
    Sp = sqrt(Sp2)
    cat("Pooled Sd", Sp,  "\n")
    
    df = n1 + n2 - 2
    
    ConfInt <- qt(1 - alpha / 2, df) * Sp * sqrt(1 / n1 + 1 / n2)
    
    cat("With", 1-alpha, "certainty the DeltaMu lies between", DeltaXbar, "+/-", ConfInt,  "\n")
    cat("With", 1-alpha, "certainty the DeltaMu lies between", DeltaXbar -ConfInt, "and", DeltaXbar + ConfInt, "\n")
    
    return(ConfInt)
    
}

#pooled.variance(21, 25, 1.30, 1.16)

d = -2
conf.int.t2(DeltaXbar = d, n1 = 10, n2 = 10, S1 = sqrt(0.60), S2 = sqrt(0.68), alpha = 0.05)


d = 132.86 - 127.44
conf.int.t2(DeltaXbar = d, n1 = 8, n2 = 21, S1 = 15.34, S2 = 18.23, alpha = 0.05)




