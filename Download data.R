## download data
setwd("C:/Users/maxth/OneDrive/Documents/R/datasciencecoursera/ExData_Plotting1")
if (!dir.exists("data")) {
  dir.create("data")
}
url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
destfile <- "data/data.zip"
download.file(url, destfile)
unzip(destfile, exdir = "data")
data <- read.csv("data/household_power_consumption.txt", sep = ";", na.strings = "?")

##organise data
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data$DateTime <- strptime(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")
data$DateTime <- as.POSIXct(data$DateTime)
data2 <- data[data$Date %in% as.Date(c("2007-02-01", "2007-02-02")),]
