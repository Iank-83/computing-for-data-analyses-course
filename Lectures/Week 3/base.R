# histogramm
x <- rnorm(100)
hist(x)

graphics.off()

# options
y <- x + rnorm(100)
par(las = 1)
plot(x, y) #base_las1.svg

par(las = 2)
plot(x, y) #base_las2.svg

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
plot(x, y) #base_scatter0.svg

x1 <- rnorm(10)
y1 <- rnorm(10)
points(x1, y1, col = "red") # base_scatter0+reddots.svg
lines(x1, y1) # base_scatter0+reddots+lines.svg
text(-2, 3, "experimenting with options") # base_scatter0+reddots+lines+text.svg

# pdf
pdf(file = "base_pdf.pdf", title = "experimeting with pdf", paper = "a4r", bg = "green") # base.pdf
x <- rnorm(100)
hist(x)
dev.off()

# normal distribution
x <- rnorm(100)
hist(x) # base_histogramm.svg
y <- rnorm(100)
plot(x, y) # base_scatter1.svg
par(mar = c(2, 2, 2, 2)) # change margin
plot(x, y) # base_mar2222.svg
par(mar = c(4, 4, 2, 2)) # change margin
plot(x, y) # base_mar4422.svg
plot(x, y, pch = 20)  # base_smalldots.svg
plot(x, y, pch = 19)  # base_bigdots.svg
plot(x, y, pch = 2)  # base_triangles.svg
plot(x, y, pch = 3)  # base_crosses1.svg
plot(x, y, pch = 4)  # base_crosses2.svg
example(points)
x <- rnorm(100)
y <- rnorm(100)
plot(x, y, pch = 20) # base_scatter2.svg
title("Scatterplot")
text(-2, -2, "Label")
legend("topleft", legend = "Data", pch = 20)
fit <- lm(y ~ x)
abline(fit, lwd = 3, col = "blue")
plot(x, y, xlab = "Weight", ylab = "Height", main = "Scatterplot", pch = 20) # base_scatter2+regress1.svg
legend("topright", legend = "Data", pch = 20)
fit <- lm(y ~ x)
abline(fit, lwd = 3, col = "red") # base_scatter2+regress2.svg

# poisson distribution
x <- rnorm(100)
y <- rnorm(100)
z <- rpois(100, 2)
par(mfrow = c(2, 1))
plot(x, y, pch = 20) # base_mfrow21_smalldots.svg
plot(x, z, pch = 19) # base_mfrow21.svg
par("mar")
par(mar = c(2, 2, 1, 1))
plot(x, y, pch = 20) 
plot(x, z, pch = 20) # base_mfrow21_mar2211.svg
par(mfrow = c(1, 2))
plot(x, y, pch = 20)
plot(x, z, pch = 20) # base_mfrow12.svg
par(mar = c(4, 4, 2, 2))
plot(x, y, pch = 20)
plot(x, z, pch = 20) # base_mfrow12_mar4422.svg
par(mfrow = c(2, 2))
plot(x, y, pch = 20) # base_mfrow22_1.svg
plot(x, z, pch = 20) # base_mfrow22_2.svg
plot(z, x, pch = 20) # base_mfrow22_3.svg
plot(y, x, pch = 20) # base_mfrow22_4.svg
par(mfcol = c(2, 2))
plot(x, y) # base_mfcol22_1.svg
plot(x, z) # base_mfcol22_2.svg
plot(z, x) # base_mfcol22_3.svg
plot(y, x) # base_mfcol22_4.svg
par(mfrow = c(1, 1))
x <- rnorm(100)
y <- x + rnorm(100)
g <- gl(2, 50)
g <- gl(2, 50, labels = c("Male", "Female"))
str(g)
plot(x, y) # base_scatter3.svg
plot(x, y, type = "n") # base_scatter3_nodata.svg
points(x[g == "Male"], y[g == "Male"], col = "green") # base_scatter3_male.svg
points(x[g == "Female"], y[g == "Female"], col = "blue") # base_scatter3_male+female.svg

