data <- read.table("household_power_consumption.txt", header = T, sep = ';')

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

two_Day_Feb <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")

hist(as.numeric(two_Day_Feb$Global_active_power), main = "Golabl Acntive Power", xlab = "Global Active Power (kilowatts)", col = "red")