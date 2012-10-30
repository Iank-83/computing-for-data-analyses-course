######################################################
#       										 
#   Title: complete
#   Description: returns the number of complete measurements in a dataset
#													 
#													 
#   Author: Stefan Kasberger
#   Date: 10th October 2012
#   License: BSD 2-clause (FreeBSD)
#   												 
######################################################


complete <- function(directory, id = 1:332) {
  nobs = c()
  for(i in seq_along(id)) {
    data <- getmonitor(i, directory)
    nobs <- append(nobs, sum(complete.cases(data)))
  }
  folder_comp <- cbind(id, nobs)
  folder_comp <- as.data.frame(folder_comp)
  folder_comp
}