x <- array(1:20, dim=c(4,5))
x
i <- array(c(1:3,3:1), dim=c(3,2))
i
x[i] <- 0
x

diag(x)

vec <- as.vector(x)
vec
x <- array(1:20, dim=c(4,5))
x[i] <- 0
vec <- c(x)
vec

state <- c("tas", "sa",  "qld", "nsw", "nsw", "nt",  "wa",  "wa",
           "qld", "vic", "nsw", "vic", "qld", "qld", "sa",  "tas",
           "sa",  "nt",  "wa",  "vic", "qld", "nsw", "nsw", "wa",
           "sa",  "act", "nsw", "vic", "vic", "act")
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56,
             61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46,
             59, 46, 58, 43)
statef <- factor(state)
statefr <- table(statef)
statefr
incomef <- factor(cut(incomes, breaks = 35+10*(0:7)))
incomef
statef
table(incomef,statef)











