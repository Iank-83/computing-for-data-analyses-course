homicides <- readLines("homicides.txt")
homicides[1]
homicides[1000]

length(grep("iconHomicideShooting", homicides))
length(grep("iconHomicideShooting|icon_homicide_shooting", homicides))
length(grep("Cause: shooting", homicides))
length(grep("Cause: [Ss]hooting", homicides))
length(grep("[Ss]hooting", homicides))
i <- grep("[cC]ause: [Ss]hooting", homicides)
j <- grep("[Ss]hooting", homicides)
str(i)
str(j)
setdiff(i, j)
setdiff(j, i)
homicides[318]
homicides[859]

grep("^New", state.name)
grep("^New", state.name, value = TRUE)
grepl("^New", state.name)

regexpr("<dd>[F|f]ound(.*)</dd>", homicides[1:10]) # regexpr is "greedy"
substr(homicides[1], 177, 177 + 93 - 1)
regexpr("<dd>[F|f]ound(.*?)</dd>", homicides[1:10]) # ungreedy version
substr(homicides[1], 177, 177 + 33 - 1)

r <- regexpr("<dd>[F|f]ound(.*?)</dd>", homicides[1:5])
regmatches(homicides[1:5], r)

x <- substr(homicides[1], 177, 177 + 33 - 1)
x
sub("<dd>[F|f]ound on |</dd>", "", x)
gsub("<dd>[F|f]ound on |</dd>", "", x)

m <- regmatches(homicides[1:5], r)
m
d <- gsub("<dd>[F|f]ound on |</dd>", "", m)
d

homicides[1]
regexec("<dd>[F|f]ound on (.*?)</dd>", homicides[1])
d <- regexec("<dd>[F|f]ound on (.*?)</dd>", homicides[1:5])
d
d[[1]]
regexec("<dd>[F|f]ound on .*?</dd>", homicides[1])

regexec("<dd>[F|f]ound on (.*?)</dd>", homicides[1])
substr(homicides[1], 177, 177 + 33 - 1)
substr(homicides[1], 190, 190 + 15 - 1)

r <- regexec("<dd>[F|f]ound on (.*?)</dd>", homicides[1:2])
r
regmatches(homicides[1:2], r)

# plot of monthly homicide counts
r <- regexec("<dd>[F|f]ound on (.*?)</dd>", homicides)
r
m <- regmatches(homicides, r)
m
dates <- sapply(m, function(x) x[2])
dates
# Sys.timezone
# Sys.time()
# temp <- Sys.getlocale(category = "LC_ALL")
# Sys.setlocale("LC_ALL", temp)

## JUST WORKS WITH AMERICAN TIMEZONE !!!!
dates <- as.Date(dates, "%B %d, %Y")
dates
hist(dates, "month", freq = TRUE)
Sys.setenv(TZ="CET")
Sys.timezone()
Sys.setlocale
