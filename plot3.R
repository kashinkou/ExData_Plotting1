source("read_data.R")
#plot
png("plot3.png")
plot(data$datetime, data$Sub_metering_1,type="l", col="black", xlab="", ylab="Energy sub metering")
lines(data$datetime, data$Sub_metering_2, col="red")
lines(data$datetime, data$Sub_metering_3, col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=rep(1,3),col=c("black","red","blue"))
dev.off()
