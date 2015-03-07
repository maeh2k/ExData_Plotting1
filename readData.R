#download data
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, "data/data.zip")
unzip("data/data.zip", exdir="data")

#read data
data <- read.table("data/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", 
                   colClasse=c("character","character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
data <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data$datetime <-  strptime(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")