# one object -> dput & dget
y <- data.frame(a=1, b="a")
dput(y)
dput(y, file = "y.R")
new.y <- dget("y.R")
new.y

# multiple objects -> dump $ source
x <- "foo"
y <- data.frame(a = 1, b = "a")
dump(c("x", "y"), file = "data.R")
rm(x, y)
source("data.R")
y
x

con <- url("http://openscience.alpine-geckos.at", "r")
x <- readLines(con)
x
