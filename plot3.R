## For plot 3
require("sqldf")
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
myFile <- "exdata-data-household_power_consumption/household_power_consumption.txt"
Query1 <- read.csv.sql(myFile,mySql)
plot(Query1$Sub_metering_1,type="l",xaxt="n",xlab="",ylab="Energy sub metering")
lines(Query1$Sub_metering_2,type="l",col="Red")
lines(Query1$Sub_metering_3,type="l",col="Blue")
axis(1, at=c(1,1440,2880), lab=c("Thu","Fri","Sat"))
legend(1800,38,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
dev.copy(png,'plot3.png')
dev.off()
