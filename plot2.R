
setwd("C:/Users/DELL/Desktop/STUDY/DS/data")

power <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")

power$Date <- as.Date(power$Date, format = "%d/%m/%Y")

power <- subset(power, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

power$datetime <- strptime(paste(power$Date, power$Time), "%Y-%m-%d %H:%M:%S")

power$datetime <- as.POSIXct(power$datetime)

attach(power)

plot(Global_active_power ~ datetime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

dev.copy(png, file = "plot2.png", height = 480, width = 480)
dev.off()

detach(power)
