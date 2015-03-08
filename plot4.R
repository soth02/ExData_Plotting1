setwd("C:\\Users\\Chris\\ExData_Plotting\\")
power<-read.csv("power_subset.txt",sep = ";" )

power$Date<-as.Date(power$Date, format="%d/%m/%Y")
datetime<-paste(as.Date(power$Date), power$Time)
power$DateTime<-as.POSIXct(datetime)

png(file="plot4.png",width=480, height=480)

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

plot(power$Global_active_power ~ power$DateTime, type="l", xlab="", ylab="Global Active Power")

plot(power$Voltage ~ power$DateTime, type="l", xlab="datetime", ylab="Voltage")

plot(power$DateTime, power$Sub_metering_1, type="l", ylab="Energy sub metering")
lines(power$DateTime, power$Sub_metering_2, col="red", type="l")
lines(power$DateTime, power$Sub_metering_3, col="blue", type="l")
legend("topright", col=c("black", "red", "blue"), lwd=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(power$Global_reactive_power ~ power$DateTime, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
