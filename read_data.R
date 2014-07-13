#read data
pc <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
datetime <-strptime(paste(pc$Date, pc$Time), "%d/%m/%Y %H:%M:%S")
pc$datetime <- datetime
data <- subset(pc,as.Date(datetime)=="2007-02-01" | as.Date(datetime)=="2007-02-02")