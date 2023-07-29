png(filename = "plot3.png", width = 480, height = 480)
with(data2,{
  plot(Sub_metering_1~DateTime, col = "black", type = "l", ylab = "Sub meter reading", xlab = "")
  lines(Sub_metering_2 ~ DateTime, col = "blue")
  lines(Sub_metering_3 ~ DateTime, col = "red")
})
legend("topright", legend = c("meter 1", "meter 2", "meter 3"), fill = c("black", "blue", "red"))
dev.off()