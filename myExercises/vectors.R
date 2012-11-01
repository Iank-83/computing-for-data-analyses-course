# vectors
x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
y <- c(x, 0, x)
y

v <- 2 * x + 1
x
v

sum((x-mean(x))^2)/(length(x)-1)

x
sort(x)

x <- 2*1:15
x

s3 <- seq(-5, 5, by=.2)
s3

s4 <- seq(length=51, from=-5, by=.2)
s4

x
s5 <- rep(x, times=5)
s5

s6 <- rep(x, each=5)
s6

x
temp <- x > 13
temp

labs <- paste(c("X","Y"), 1:10, sep="")
labs

y <- x[!is.na(x)]
y

c("x","y")[rep(c(1,2,2,1), times=4)]

y <- x[-(1:5)]
y

fruit <- c(5, 10, 1, 20)
names(fruit) <- c("orange", "banana", "apple", "peach")
fruit
lunch <- fruit[c("apple","orange")]
lunch











