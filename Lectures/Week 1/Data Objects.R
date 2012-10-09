x <- 5
x
print(x)
x <- 1:20
x
x <- c(0.5, 0.6) # concatenate
x
x <- c(1+0i, 2+4i) # complex
x
y <- c(1.7,"a") # character "1.7" & "a"
y
y <- c(TRUE, 2) # numeric => 1 & 2
y
y <- c("a", TRUE)  # character => "a" & "TRUE"
y
x <- 0:6
x
class(x)
as.numeric(x)
as.logical(x)
as.complex(x)
m <- matrix(nrow = 2, ncol = 3)
m
dim(m) # first element of the return is rows, second columns
m <- 1:10
m
x <- 1:3
y <- 10:12
x
y
cbind(x, y)
rbind(x, y)
x <- list(1, "a", TRUE, 1 + 4i)
x
x <- factor(c("yes", "yes", "no", "yes", "no"))
x
table(x)
unclass(x)
x <- factor(c("yes", "yes", "no", "yes", "no"), levels=c("yes", "no"))
x
x <- c(1, 2, NA, 10, 3)
is.na(x)
is.nan(x)
x <- c(1, 2, NaN, NA,4)
is.na(x)
is.nan(x)
x <- data.frame(foo = 1:4, bar = c(T, T, F, F))
x
nrow(x)
ncol(x)
x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
x <- list(a=1, b=2, c=3)
x
m <- matrix(1:4, nrow=2, ncol=2)
m
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m



