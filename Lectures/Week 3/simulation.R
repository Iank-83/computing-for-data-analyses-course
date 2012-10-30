# normal distribution
x <- rnorm(10)
x
x <- rnorm(10, 20, 2)
x
summary(x)

set.seed(1)
rnorm(5)
rnorm(5)
set.seed(1)
rnorm(5)

# poisson distribution
rpois(10, 1)
rpois(10, 2)
rpois(10, 20)
ppois(2, 2) # cumulative distribution
ppois(4, 2) # (x <= 4)
ppois(6, 2) # (x <= 6)

# simulate linear model
set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x, y)

e <- rnorm(100, 0, 1)
y <- 1.5 - 3 * x + e
plot(x, y)

set.seed(10)
x <- rbinom(100, 1, 0.5)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x, y)

set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3 * x
y <- rpois(100, exp(log.mu))
summary(y)
plot(x, y)

set.seed(1)
sample(1:10, 4)
sample(1:10, 4)
sample(letters, 5)
sample(1:10)
sample(1:10)
sample(1:10, replace = TRUE)






