# Read the data
rawData <- read.csv("household_power_consumption.txt", header=T, sep=';', quote='\"',
                    na.strings="?", check.names=F, stringsAsFactors=F)
rawData$Date <- as.Date(rawData$Date, format="%d/%m/%Y")

# Subset the data from 2007-02-01 to 2007-02-02
data <- subset(rawData, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(rawData)

# Converting dates
datetime <- paste(as.Date(data$Date), data$Time)
data$datetime <- as.POSIXct(datetime)