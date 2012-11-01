class(1)
class(TRUE)
class(rnorm(100))
class(NA)
class("foo")

x <- rnorm(199)
y <- x + rnorm(100)
fit <- lm(y ~ x)
class(fit)
str(fit)
head(fit, 10)

mean
print

methods("mean")

show
showMethods("show")

getS3method()
getMethod()

set.seed(2)
x <- rnorm(100)
mean(x)
head(getS3method("mean", "default"))
tail(getS3method("mean", "default"))

set.seed(3)
df <- data.frame(x = rnorm(100), y = 1:100)
sapply(df, mean)

set.seed(10)
x <- rnorm(100)
plot(x) # scatter.svg
set.seed(10)
x <- rnorm(100)
x <- as.ts(x)
class(x)
plot(x) # timeseries.svg

# before executing this, you have to source the polygonClass.R file
showMethods("plot")
p <- new("polygon", x = c(1, 2, 3, 4), y = c(1, 2, 3, 1))
plot(p) # polygon.svg




