# only be using data from the dates 2007-02-01 and 2007-02-02
hpc <- read.table("C:/Users/Afsane/Desktop/household_power_consumption.txt", 
                  sep=";", header = TRUE)

hpc <- hpc[(hpc$Date == "1/2/2007") | (hpc$Date == "2/2/2007"),]
hpc$DT<- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")

png(filename = "C:/Users/Afsane/Desktop/plot4.png", width = 480, height = 480, units = "px")
par (mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
with(hpc, {
  plot(DT, Global_active_power, xlab="", ylab="Global Active Power", type="l")
  plot(DT, Voltage, xlab="DT", ylab="Voltage", type="l")
  
  cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  plot(DT, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(DT, Sub_metering_2, type="l", col="red")
  lines(DT, Sub_metering_3, type="l", col="blue")
  legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols, bty="n")
  
  plot(DT, Global_reactive_power, xlab="DT", ylab="Global_reactive_power", type="l")        
})    
dev.off()
