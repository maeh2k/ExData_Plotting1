#read data by running readData.R

#create plot
png(filename="figure/plot4.png")
par(mfrow = c(2,2))
with(data, {
  plot(datetime, Global_active_power, type="l", ylab="Global Active Power", xlab="")
  
  plot(datetime, Voltage, type="l", ylab="Voltage", xlab="datetime")
  
  plot(datetime, Sub_metering_1, type="l", col="black", ylab="Energy sub metering", xlab="")
  lines(datetime, Sub_metering_2, type="l", col="red")
  lines(datetime, Sub_metering_3, type="l", col="blue")
  legend("topright", bty="n", lty=c(1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
  plot(datetime, Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
})
dev.off()
