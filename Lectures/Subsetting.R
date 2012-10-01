x <- c("a", "b", "c", "c", "d", "a")
x[1]
x[2]
x[1:4]
x[x>"a"]
u <- x > "a"
u
x[u]
x <- matrix(1:6, 2, 3)
x[1, ]
x[1, , drop = FALSE] # returns it as a matrix
x <- list(foo = 1:4, bar=0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x["bar"]
x <- list(foo=1:4, bar=0.6, baz="hello")
name <- "foo"
x[[name]]
x$name
x$foo
x <- list(aardvark = 1:5)
x$a # partial matching
x[["a", exact = FALSE]] # partial matching must be activated

x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]

x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y)
good
x[good]
y[good]

