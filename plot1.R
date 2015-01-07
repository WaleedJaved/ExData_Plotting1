library(sqldf)
path = "data.1.txt"
data <- read.csv.sql(path, sep=";",sql = 'select * from file where Date = "1/2/2007" or Date = "2/2/2007"')
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
png("plot1.png",width=480,height=480)
hist(data[,3],col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()

