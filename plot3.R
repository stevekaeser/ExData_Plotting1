# load the data
source('loadData.R')

# create plot 3
# open the PNG device
png(filename="plot3.png", height=480, width=480)

# create the plot with lines
with(data, {
    plot(Sub_metering_1~datetime, type="l",
         ylab="Energy sub metering", xlab="")
    lines(Sub_metering_2~datetime,col='Red')
    lines(Sub_metering_3~datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# close the device
dev.off()