rm(list = ls())

# read the traffic data files
getwd()
library(data.table)

lifesight.data<- fread("data/lifesightdata.csv", header = TRUE, sep = ",")
JFR.data<- fread("data/2018-01-01.csv", header = TRUE, sep = ",")
head(lifesight.data)
colnames(JFR.data)

# split date time in JFR data
head(JFR.data$Date)
JFR.data$Date<- as.Date(JFR.data$Date_Time)
JFR.data$Time<- format(as.POSIXct(JFR.data$Date_Time) ,format = "%H:%M:%S")
head(JFR.data$Time)
View(JFR.data)
colnames(JFR.data)
# drop column names
JFR.data.new<- JFR.data[,-c(1:4,6,8)]
# rearrange the columns
colnames(JFR.data.new)
JFR.data.new<- JFR.data.new[,c(6:7,1:5)]
colnames(JFR.data.new)
View(JFR.data.new)
View(lifesight.data)
