source('loadData.R')

## Plot 2
# open png device
png(filename="plot2.png", height=480, width=480)

# create the plot
plot(data$Global_active_power~data$datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

# close the device
dev.off()