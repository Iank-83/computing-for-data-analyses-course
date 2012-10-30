######################################################
#     											 
#   Title: runfunc
#   Description: runs the functions for exercise 1
#													 
#													 
#   Author: Stefan Kasberger
#   Date: 23th October 2012
#   License: BSD 2-clause (FreeBSD)
#   												 
######################################################

rm(list=ls()) # loeschen des workspaces
source("getmonitor.R")
source("complete.R")
source("corr.R")
monitor_1 <- getmonitor(1, "specdata")
monitor_13 <- getmonitor(13, "specdata")
monitor_134 <- getmonitor(134, "specdata")
folder <- complete("specdata")
cr <- corr("specdata", 150)