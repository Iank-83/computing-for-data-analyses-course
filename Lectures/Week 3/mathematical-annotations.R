?plotmath

plot(0, 0, main = expression(theta == 0), 
     ylab = expression(hat(gamma) == 0),
     xlab = expression(sum(x[i] * y[i], i==1, n))) # math_plot1.svg
x <- rnorm(100)
hist(x, xlab = expression("The mean (" * bar(x) * ") is " * sum(x[i]/n, i==1, n))) # math_hist.svg

x <- rnorm(100)
y <- x + rnorm(100, sd = 0.5)
plot(x, y, 
     xlab = substitute(bar(x) == k, list(k = mean(x))), 
     ylab = substitute(bar(y) == k, list(k=mean(y)))
) # math_scatter_substitute.svg

par(mfrow = c(2, 2))
for(i in 1:4) {
  x <- rnorm(100)
  hist(x, main = substitute(theta == num, list(num=i)))
} # math_hist_substitute.svg

# help pages
?par
?plot
?xyplot
?plotmath
?axis




