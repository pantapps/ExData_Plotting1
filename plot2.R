# Exploratory Data Analysis - Course Project 1 - Coursera
# Eduardo Garcia 2016

graphics.off()

source("loadData.R")

plotData <- loadData()

plot(plotData$timeData, plotData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.copy(png, file="plot2.png", width=480, height=480)

dev.off()