## For plot 2
plot(Query1$Global_active_power,type="l",xaxt="n",xlab="",ylab="Global Active 
Power (kilowatts)")
axis(1, at=c(1,1440,2880), lab=c("Thu","Fri","Sat"))
dev.copy(png,'plot2.png')
dev.off()