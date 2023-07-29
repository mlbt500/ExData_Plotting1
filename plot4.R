par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))
values <- c("Global_active_power", "Global_reactive_power", "Voltage")
for(i in values){
  plot(get(i)~DateTime, data = data2, type = "l", ylab = i)
}
with(data2,{
  plot(Sub_metering_1~DateTime, col = "black", type = "l", ylab = "Sub meter reading", xlab = "")
  lines(Sub_metering_2 ~ DateTime, col = "blue")
  lines(Sub_metering_3 ~ DateTime, col = "red")
})
legend("topright", legend = c("meter 1", "meter 2", "meter 3"), fill = c("black", "blue", "red"))
