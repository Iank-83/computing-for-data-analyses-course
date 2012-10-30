# histogramm
x <- rnorm(100)
hist(x)

graphics.off()

# options
y <- x + rnorm(100)
par(las = 1)
plot(x, y)

par(las = 2)
plot(x, y)

par("lty")
par("lwd")
par("col")
par("pch")
par("bg")
par("mar")
par("oma")
par("mfrow")
par("mfcol")

y <- x + rnorm(100)
plot(x, y)

x1 <- rnorm(10)
y1 <- rnorm(10)
points(x1, y1, col = "red")
lines(x1, y1)
text(-2, 3, "experimenting with options")

# pdf
pdf(file = "testRplot.pdf", title = "experimeting with pdf", paper = "a4r", bg = "green")
x <- rnorm(100)
hist(x)
dev.off()

