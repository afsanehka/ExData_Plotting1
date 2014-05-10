# only be using data from the dates 2007-02-01 and 2007-02-02
hpc <- read.table("C:/Users/Afsane/Desktop/household_power_consumption.txt", 
                  sep=";", header = TRUE)

hpc <- hpc[(hpc$Date == "1/2/2007") | (hpc$Date == "2/2/2007"),]
hpc$DT<- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")


png(filename = "C:/Users/Afsane/Desktop/plot3.png", width = 480, height = 480, units = "px")
cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(hpc$DT, hpc$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(hpc$DT, hpc$Sub_metering_2, type="l", col="red")
lines(hpc$DT, hpc$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)
dev.off()
