png(filename = "plot2.png", width = 480, height = 480)
plot(Global_active_power~DateTime, data = data2, type = "l", ylab = "Global active power (kw)", xlab = "")
dev.off()