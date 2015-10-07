
# Simple quick vector tutorial. 


# Simple vector of numbers
c(1, 2, 3, 4, 5)

# Simple vectors of characters
c("Hello", "World", "Hello World")

#Simple boolean vector
c(TRUE, FALSE, FALSE, TRUE)


# Assign simple vector to x
x <- c(1, 2, 3, 4, 5)
# Print x on console
x
print(x)
cat(x)
# Check out the type of x (both ways give same result)
mode(x)
class(x)

# How long is the vector?
length(x)

# Get the mean of the values of the vector
mean(x)
# Assign the mean to m
m <- mean(x)
# And now look at m
m

# Get the standard deviation of x and assign it to s, the print s on screen
s <- sd(x)
s

# Here are other ways to initialise a vector:

x <- 10:20
y <- rep(2,10)

# Let's get the 3rd element of x
x[3]
# or just the first three elements:
x[1:3]
# do it in a different way:
head(x, 3)
# default is 6 elements
head(x)
# or the last elements
tail(x)


# We can add vectors
x + y
# We can multiply vectors 
# (vectors elements multiplied elementwise resulting in a vector)
x * y


# We can combine (concatenate) vectors to build a larger vector:
c(x, y)

# Let's see which elements of x are in y
x %in% y

# Let's see which element of x is 3
x == 3
# Let's extract this element
x[x == 3]







