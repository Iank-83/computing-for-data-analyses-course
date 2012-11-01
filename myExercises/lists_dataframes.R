# lists
lst <- list(name="Fred", wife="Mary", no.children=3,
            child.ages=c(4,7,9))
lst
str(lst)
length(lst)
length(lst[[4]])
lst[[1]]
lst[[3]]
lst[[4]]
lst[[4]][3]
names(lst)

# dataframes
state <- c("tas", "sa",  "qld", "nsw", "nsw", "nt",  "wa",  "wa",
           "qld", "vic", "nsw", "vic", "qld", "qld", "sa",  "tas",
           "sa",  "nt",  "wa",  "vic", "qld", "nsw", "nsw", "wa",
           "sa",  "act", "nsw", "vic", "vic", "act")
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56,
             61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46,
             59, 46, 58, 43)
statef <- factor(state)
incomef <- factor(cut(incomes, breaks = 35+10*(0:7)))
accountants <- data.frame(home=statef, loot=incomes, shot=incomef)

