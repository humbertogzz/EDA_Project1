setwd("C:/Users/Humberto/Documents/Courses/Coursera/Exploratory Data Analysis")
mydata<-read.delim("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
mydata2<-subset(mydata,mydata$Date=="2/2/2007" | mydata$Date=="1/2/2007")
mydata2$Date2<-strptime(paste(mydata2$Time,mydata2$Date,sep=" "),"%H:%M:%S %d/%m/%Y")
png(file="plot3.png")
plot(mydata2$Date2,mydata2$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(mydata2$Date2,mydata2$Sub_metering_2,col="red")
lines(mydata2$Date2,mydata2$Sub_metering_3,col="blue")
legend("topright", lty=1,col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.off()


