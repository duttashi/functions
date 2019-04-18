# clean
rm(list=ls())

# load the data files
wifi.dat<- read.csv("data/wifi.csv", sep = ",", stringsAsFactors = FALSE)

# extract the date and time from the Entry and Exit columns
wifi.dat$temp<- strptime(wifi.dat, "%Y-%m-%d %H:%M:%S")
wifi.dat$EntryDate <- as.Date(wifi.dat$temp)
wifi.dat$EntryTime <- format(wifi.dat$temp, "%H:%M:%S")

