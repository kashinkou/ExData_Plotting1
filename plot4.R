source("read_data.R")
#plot
png("plot4.png")
par(mfrow=c(2,2))

plot(data$datetime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power")

plot(data$datetime, data$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(data$datetime, data$Sub_metering_1,type="l", col="black", xlab="", ylab="Energy sub metering")
lines(data$datetime, data$Sub_metering_2, col="red")
lines(data$datetime, data$Sub_metering_3, col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=rep(1,3),col=c("black","red","blue"), bty="n", cex=0.95)

plot(data$datetime, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()
