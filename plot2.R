setwd("C:\\Users\\Chris\\ExData_Plotting\\")
power<-read.csv("power_subset.txt",sep = ";" )

power$Date<-as.Date(power$Date, format="%d/%m/%Y")
datetime<-paste(as.Date(power$Date), power$Time)
power$DateTime<-as.POSIXct(datetime)

png(file="plot2.png",width=480, height=480)

plot(power$DateTime, power$Global_active_power, type="l", xlab="", ylab="Frequency", main="Global Active Power")

dev.off()
