# only be using data from the dates 2007-02-01 and 2007-02-02
hpc <- read.table("C:/Users/Afsane/Desktop/household_power_consumption.txt", 
                  sep=";", header = TRUE)

hpc <- hpc[(hpc$Date == "1/2/2007") | (hpc$Date == "2/2/2007"),]
hpc$DT<- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")

png(filename = "C:/Users/Afsane/Desktop/plot2.png", width = 480, height = 480, units = "px")
plot(hpc$DT, hpc$Global_active_power, type="l", xlab="", 
     ylab="Global Active Power (kilowatts)")
dev.off()
