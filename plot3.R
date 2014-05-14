## For plot 3
require("sqldf")
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
myFile <- "exdata-data-household_power_consumption/household_power_consumption.txt"
Query1 <- read.csv.sql(myFile,mySql)
DateTime <- paste(Query1$Date, Query1$Time, sep = " ")
DateTime <- strptime(DateTime, format = "%d/%m/%Y %H:%M:%S")
plot(DateTime,Query1$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(Query1$Sub_metering_2,type="l",col="Red")
lines(Query1$Sub_metering_3,type="l",col="Blue")
legend(1800,38,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
dev.copy(png,'plot3.png')
dev.off()
