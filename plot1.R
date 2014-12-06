# load the data
source('loadData.R')

# create plot 1
# open png device
png(filename="plot1.png", height=480, width=480)

# create the histogram
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

#close the png device
dev.off()