# Exploratory Data Analysis - Course Project 1 - Coursera
# Eduardo Garcia 2016

graphics.off()

source("loadData.R")

plotData <- loadData()

par(mfrow=c(2,2))

plot(plotData$timeData, plotData$Global_active_power, type="l", xlab="", ylab="Global Active Power")

plot(plotData$timeData, plotData$Voltage, type="l", xlab="Datetime", ylab="Voltage")

plot(plotData$timeData, plotData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")

lines(plotData$timeData, plotData$Sub_metering_2, col="red")
lines(plotData$timeData, plotData$Sub_metering_3, col="blue")

legend("topright", col=c("black","red","blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1), bty="n", cex=.5)

plot(plotData$timeData, plotData$Global_reactive_power, type="l", xlab="Datetime", ylab="Global Reactive Power")

dev.copy(png, file="plot4.png", width=480, height=480)

dev.off()