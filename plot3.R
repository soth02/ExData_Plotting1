setwd("C:\\Users\\Chris\\ExData_Plotting\\")
power<-read.csv("power_subset.txt",sep = ";" )

power$Date<-as.Date(power$Date, format="%d/%m/%Y")
datetime<-paste(as.Date(power$Date), power$Time)
power$DateTime<-as.POSIXct(datetime)

png(file="plot3.png",width=480, height=480)

plot(power$DateTime, power$Sub_metering_1, type="l", xlab="", ylab="Frequency", main="Global Active Power")
lines(power$DateTime, power$Sub_metering_2, col="red", type="l", xlab="", ylab="Frequency", main="Global Active Power")
lines(power$DateTime, power$Sub_metering_3, col="blue", type="l", xlab="", ylab="Frequency", main="Global Active Power")
legend("topright", cex=.85, col=c("black", "red", "blue"), lwd=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
