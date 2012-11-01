pal <- colorRamp(c("red", "blue"))
pal(0)
pal(1)
pal(0.5)
pal(0.63)
pal(seq(0, 1, len = 10))

pal <- colorRampPalette(c("red", "yellow"))
pal(2)
pal(10)

pal <- colorRampPalette(c("red", "yellow", "blue"))
x <- rnorm(100)
plot(x, col = pal(100)) # colorRampPalette_100.svg
plot(x, col = pal(10)) # colorRampPalette_10.svg

library(RColorBrewer)
cols <- brewer.pal(3, "BuGn")
cols
pal <- colorRampPalette(cols)
image(volcano, col = pal(20)) # volcano.svg

x <- rnorm(10000)
y <- rnorm(10000)
smoothScatter(x, y) # smoothScatter.svg

plot(x, y, pch = 19) # scatter_bigdots
plot(x, y, col = rgb(0, 0, 0, 0.2), pch = 19) # scatter_transparentdots





















