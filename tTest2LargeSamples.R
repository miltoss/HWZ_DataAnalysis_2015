

# Funktion definieren
test2.means <- function(X1, X2, S1, S2, n1, n2, DeltaMu)
    {
    
    t <- ((X1 - X2) - DeltaMu) / sqrt(S1**2 / n1 + S2 ** 2 /n2)
        
    return(t)
        
}

# Aufruf mit Zahlen
test2.means(X1 = 41.5, X2 = 44.8, n1 = 35, n2 = 40, S1 = 4.21, S2 = 4.62, DeltaMu = 0)