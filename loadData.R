# Exploratory Data Analysis - Course Project 1 - Coursera
# Eduardo Garcia 2016

loadData <- function() {
  dataFile <- "household_power_consumption.txt"

  if(!file.exists(dataFile)) {
    temp <- tempfile()
    download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
    dataFile <- unzip(temp)
    unlink(temp)
  }
  
  powerData <- read.table(dataFile, header=T, sep=";", na.strings="?")
  powerData <- powerData[powerData$Date %in% c("1/2/2007","2/2/2007"),]
  timeData <- strptime(paste(powerData$Date, powerData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
  plotData <- cbind(timeData, powerData)
}