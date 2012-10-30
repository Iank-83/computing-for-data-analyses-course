######################################################
#       										 
#   Title: getmonitor
#   Description: returns the data of the table in a dataframe
#													 
#													 
#   Author: Stefan Kasberger
#   Date: 10th October 2012
#   License: BSD 2-clause (FreeBSD)
#   												 
######################################################


getmonitor <- function(id, directory, summarize = FALSE) {
  zeros <- c()
  i <- 3
  while( i > nchar(id) ) {
    zeros <- paste0(zeros, "0")
    i <- i - 1
  }
  filename <- paste0(directory, "/", zeros, id, ".csv")
  monitor <- read.csv(filename)
  if(summarize == TRUE) summarize(monitor)
  monitor
}

