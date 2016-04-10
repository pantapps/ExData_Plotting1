# Exploratory Data Analysis - Course Project 1 - Coursera
# Eduardo Garcia 2016

graphics.off()

source("loadData.R")

plotData <- loadData()

hist(plotData$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")

dev.copy(png, file="plot1.png", width=480, height=480)

dev.off()