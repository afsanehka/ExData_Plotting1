# read file 
hpc.org <- read.table("C:/Users/Afsane/Desktop/household_power_consumption_org.txt", 
                      sep=";", header = TRUE)
# only be using data from the dates 2007-02-01 and 2007-02-02
hpc <- read.table("C:/Users/Afsane/Desktop/household_power_consumption.txt", 
                  sep=";", header = TRUE)

# make histogram
png(filename = "C:/Users/Afsane/Desktop/plot1.png", width = 480, height = 480, units = "px")
hist(hpc$Global_active_power, col="red", xlab="Global Active Power (kilowatts)",
     ylab="Frequency", main="Global Active Power")
dev.off()
