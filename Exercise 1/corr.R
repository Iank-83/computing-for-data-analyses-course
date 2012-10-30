######################################################
#         									 
#   Title: corr
#   Description: returns a vector of the correlation coefficient 
#   for all data, where the number of complete cases is higher than the threshold
#													 
#													 
#   Author: Stefan Kasberger
#   Date: 10th October 2012
#   License: BSD 2-clause (FreeBSD)
#   												 
######################################################


corr <- function(directory, threshold = 0) {
  corr = c()
  folder_comp <- complete(directory)
  
  for(i in seq_along(folder_comp$nobs > threshold) ) {
    if( folder_comp[i, 2] > threshold ) {
      data <- getmonitor(folder_comp[i, 1], directory)
      corr <- append( corr, cor( data$nitrate, data$sulfate, use = "pairwise.complete.obs") )
    }
  }  
  corr
}
