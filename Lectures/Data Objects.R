x <- 5
x
print(x)
x <- 1:20
x <- c(0.5, 0.6) # concatenate
x <- c(1+0i, 2+4i) # complex
y <- c(1.7,"a") # character "1.7" & "a"
y <- c(TRUE, 2) # numeric => 1 & 2
y <- c("a", TRUE)  # character => "a" & "TRUE"
x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.complex(x)
m <- matrix(nrow = 2, ncol = 3)
m
dim(m) # first element of the return is rows, second columns
m <- matrix(1:6, nrow = 2, ncol = 3)
m
m <- 1:10
m
dim(m) <- c(2, 5)
x <- 1:3
y <- 10:12
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
x <- list(a=1, b=2, c=3)
m <- matrix(1:4, nrow=2, ncol=2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m



