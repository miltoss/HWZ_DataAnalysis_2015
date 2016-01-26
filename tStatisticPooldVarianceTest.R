
# Funktion definieren
test2.means.pooled <- function(X1, X2, S1, S2, n1, n2, DeltaMu = 0)
{
    Sp2 <- ((n1 -1) * S1**2 + (n2 - 1) * S2**2) / (n1 + n2 -2)
        
        
    t <- ((X1 - X2) - DeltaMu) / sqrt(Sp2 * (1 / n1 + 1 / n2))
    
    return(t)
    
}

# Aufruf mit Zahlen
test2.means.pooled(X1 = 41.5, X2 = 44.8, n1 = 3, n2 = 4, S1 = 4.21, S2 = 4.62, DeltaMu = 0)