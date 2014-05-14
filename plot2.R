## For plot 2
require("sqldf")
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
myFile <- "exdata-data-household_power_consumption/household_power_consumption.txt"
Query1 <- read.csv.sql(myFile,mySql)
DateTime <- paste(Query1$Date, Query1$Time, sep = " ")
DateTime <- strptime(DateTime, format = "%d/%m/%Y %H:%M:%S")
plot(DateTime,Query1$Global_active_power,type="l",xlab="",ylab="Global Active 
Power (kilowatts)")
axis(1, at=c(1,1440,2880), lab=c("Thu","Fri","Sat"))
dev.copy(png,'plot2.png')
dev.off()
