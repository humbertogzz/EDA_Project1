setwd("C:/Users/Humberto/Documents/Courses/Coursera/Exploratory Data Analysis")
mydata<-read.delim("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
mydata2<-subset(mydata,mydata$Date=="2/2/2007" | mydata$Date=="1/2/2007")
mydata2$Date2<-strptime(paste(mydata2$Time,mydata2$Date,sep=" "),"%H:%M:%S %d/%m/%Y")
plot(mydata2$Date2,mydata2$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.copy(png,file="plot2.png")
dev.off()


