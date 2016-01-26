
z.stat.prop <- function(x1, n1, x2, n2, DeltaP) {
    
    pbar <- (x1 + x2) / (n1 + n2)
    
    
    ps1 <- x1 / n1
    
    ps2 <- x2 / n2
    
   
    
    z <- (ps1 - ps2 - DeltaP) / sqrt ( (pbar * (1 - pbar) * (1 / n1 + 1 / n2)) )
    
    return(z)
     
}

' This is a long comment '

z.stat.prop(x1 = 400, n1 = 10000, x2 = 30, n2 = 1000, DeltaP = 0.02)