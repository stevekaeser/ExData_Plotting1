# load the data
source('loadData.R')

# create plot 4
# open the png device
png(filename="plot4.png", height=480, width=480)

# set graphics parameters
# mfrow=c(2,2) => creates a 2x2 matrix of plots
# mar=c(4,4,2,1) => specifies the number of lines of margin 
#                   to be applied to the sides of the plot
# oma=c(0,0,2,0) => size of the outer margins in lines of text
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

# create the 4 plots
with(data, {
    plot(Global_active_power~datetime, type="l", ylab="Global Active Power", xlab="")
    plot(Voltage~datetime, type="l", ylab="Voltage")
    plot(Sub_metering_1~datetime, type="l", ylab="Energy sub metering", xlab="")
    lines(Sub_metering_2~datetime,col='Red')
    lines(Sub_metering_3~datetime,col='Blue')
    legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(Global_reactive_power~datetime, type="l")
})

#close the device
dev.off()