#read data by running readData.R

#create plot
png(filename="figure/plot4.png")
par(mfrow = c(2,2))
with(data, {
  plot(Global_active_power, type="l", ylab="Global Active Power", xlab="", xaxt="n")
  axis.Date(side=1, Date, format="%a")
  
  plot(Voltage, type="l", ylab="Voltage", xlab="datetime", xaxt="n")
  axis.Date(side=1, Date, format="%a")
  
  plot(Sub_metering_1, type="l", col="black", ylab="Energy sub metering", xlab="", xaxt="n")
  lines(Sub_metering_2, type="l", col="red")
  lines(Sub_metering_3, type="l", col="blue")
  axis.Date(side=1, Date, format="%a")
  legend("topright", lty=c(1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
  plot(Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime", xaxt="n")
  axis.Date(side=1, Date, format="%a")
})
dev.off()
