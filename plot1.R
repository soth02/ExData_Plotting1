setwd("C:\\Users\\Chris\\ExData_Plotting\\")

#I was lazy and manually truncated the dataset in notepad to the desired dates
power<-read.csv("power_subset.txt",sep = ";" )

png(file="plot1.png",width=480, height=480)

hist(power$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")

dev.off()
