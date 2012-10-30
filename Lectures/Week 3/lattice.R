library(lattice)
package ? lattice
library(nlme)
xyplot(distance ~ age | Subject, data = Orthodont) # lattice_orthodont1.svg
xyplot(distance ~ age | Subject, data = Orthodont, type = "b") # lattice_orthodont2.svg

# panels
x <- rnorm(100)
y <- x + rnorm(100, sd = 0.5)
f <- gl(2, 50, labels = c("Group 1", "Group 2"))
xyplot(y ~ x | f) # lattice_panel.svg

xyplot(y ~ x | f, 
       panel = function(x, y, ...) { 
         panel.xyplot(x, y, ...) 
         panel.abline(h = median(y), 
                      lty = 2)
       }) # lattice_panel_mean.svg

xyplot(y ~ x | f, 
       panel = function(x, y, ...) { 
         panel.xyplot(x, y, ...) 
         panel.lmline(x, y, col = 2)
       }) # lattice_panel_regression.svg

library(help = lattice)
data(environmental)
?environmental
head(environmental)
xyplot(ozone ~ radiation, data = environmental) # lattice_environmental_scatter1.svg
xyplot(ozone ~ radiation, data = environmental, main = "Ozone vs Radiation") # lattice_environmental_scatter2.svg
xyplot(ozone ~ temperature, data = environmental) # lattice_environmental_scatter3.svg
summary(environmental$temperature)
temp.cut <- equal.count(environmental$temperature, 4)
temp.cut
xyplot(ozone ~ radiation | temp.cut, data = environmental) # lattice_environmental_4boxes.svg
xyplot(ozone ~ radiation | temp.cut, data = environmental, layout = c(1, 4)) # lattice_environmental_horizontal1.svg
xyplot(ozone ~ radiation | temp.cut, data = environmental, layout = c(1, 4), as.table = TRUE) # lattice_environmental_horizontal2.svg
xyplot(ozone ~ radiation | temp.cut, data = environmental, as.table = TRUE,
       panel = function(x, y, ...) {
         panel.xyplot(x, y, ...)
         fit <- lm(y ~ x)
         panel.abline(fit, lwd = 2)
       }) # lattice_environmental_horizontal_regression1.svg
xyplot(ozone ~ radiation | temp.cut, data = environmental, as.table = TRUE,
       panel = function(x, y, ...) {
         panel.xyplot(x, y, ...)
         panel.loess(x, y)
       }) # lattice_environmental_horizontal_regression2.svg
xyplot(ozone ~ radiation | temp.cut, data = environmental, as.table = TRUE,
       panel = function(x, y, ...) {
         panel.xyplot(x, y, ...)
         panel.loess(x, y)
       }, xlab ="Solar Radiation", ylab ="Ozone (ppb)", 
       main = "Ozone vs. Solar Radiation") # lattice_environmental_horizontal_regression3.svg
wind.cut <- equal.count(environmental$wind, 4)
wind.cut
xyplot(ozone ~ radiation | temp.cut * wind.cut, data = environmental, as.table = TRUE,
       panel = function(x, y, ...) {
         panel.xyplot(x, y, ...)
         panel.loess(x, y)
       }, xlab ="Solar Radiation", ylab ="Ozone (ppb)", 
       main = "Ozone vs. Solar Radiation") # lattice_environmental_temp_wind.svg
splom(~ environmental) # lattice_splom.svg
histogram(~ temperature, data = environmental) # lattice_histogram.svg
histogram(~ ozone | wind.cut, data = environmental) # lattice_histogram_wind.svg
histogram(~ ozone | wind.cut * temp.cut, data = environmental) # lattice_histogram_temp_wind.svg
