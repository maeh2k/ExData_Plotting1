#read data by running readData.R

#create plot
png(filename="figure/plot2.png")
plot(data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="", xaxt="n")
axis.Date(side=1, data$Date, format="%a")
dev.off()