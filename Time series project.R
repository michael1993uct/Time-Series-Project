rm(list = ls())
graphics.off
setwd("C:\\University_Stuff\\Time series\\Assignment")
dat <- read.csv(file = "jse-3.csv", sep = ",", stringsAsFactors=FALSE)
library("zoo")
dat$�..Date <- as.Date(dat$�..Date,format = "%d-%b-%y")
closingprice <- zoo(dat$Close, order.by = dat$�..Date)