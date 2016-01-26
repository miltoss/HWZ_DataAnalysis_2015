
z.test.stat <- function(Xbar, mu, sigma, n)
    # test statistic for mean of normal distribution
    # sigma bekannt
    
{
    z <- ( Xbar - mu ) / ( sigma / sqrt(n) )
    return(z)
}

t.test.stat <- function(Xbar, mu, S, n)
    # test statistic for mean of normal distribution
    # sigma unbekannt
{
    
    t <- ( Xbar - mu ) / ( S / sqrt(n) )
    return(t)
    
}


z.test.stat.prop <- function(p, ps, n)
{
    z = (ps - p) / sqrt( p * (1 - p) / n)
    return(z)
}
    
