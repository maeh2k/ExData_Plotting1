#read data by running readData.R

#create plot
png(filename="figure/plot3.png")
plot(data$datetime, data$Sub_metering_1, type="l", col="black", ylab="Energy sub metering", xlab="")
lines(data$datetime, data$Sub_metering_2, type="l", col="red")
lines(data$datetime, data$Sub_metering_3, type="l", col="blue")
legend("topright", lty=c(1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

