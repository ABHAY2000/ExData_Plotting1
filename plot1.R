path <- "E:/abhay/course/Data Science-foundation with R/Exploratory Data Analysis/Week_1/exdata_data_household_power_consumption/household_power_consumption.txt"
data <- read.table(path,header = TRUE,sep = ";",stringsAsFactors = FALSE,dec = ".")
subdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
globalActivePower <- as.numeric(subdata$Global_active_power)
png("plot1.png",width = 480, height = 480)
hist(globalActivePower,col = "red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.off()