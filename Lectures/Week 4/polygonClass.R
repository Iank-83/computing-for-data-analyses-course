setClass("polygon",
         representation(x = "numeric", 
                        y = "numeric"))

setMethod("plot", "polygon", 
          function(x, y, ...) {
            plot(x@x, x@y, type = "n", ...)
            xp <- c(x@x, x@x[1])
            yp <- c(x@y, x@y[1])
            lines(xp, yp)
          })
