#read data by running readData.R

#create plot
png(filename="figure/plot2.png")
plot(data$datetime, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()