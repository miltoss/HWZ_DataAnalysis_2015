
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

x <- 1:5
y <- rep(2,5)

# Let's get the 3rd element of x
x[3]


# We can add vectors
x + y
# We can multiply vectors
x * y

# We can combine (concatenate) vectors to build a larger vector:
c(x, y)

# Let's see which elements of x are in y
x %in% y

# Let's see which element of x is 3
x == 3
# Let's extract this element
x[x == 3]







