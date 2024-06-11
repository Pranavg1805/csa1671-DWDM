speed <- c(78.3, 81.8, 82, 74.2, 83.4, 84.5, 82.9, 77.5, 80.9, 70.6)

Q1 <- quantile(speed, 0.25)
Q3 <- quantile(speed, 0.75)
IQR_speed <- IQR(speed)

cat("First Quartile (Q1):", Q1, "\n")
cat("Third Quartile (Q3):", Q3, "\n")
cat("Interquartile Range (IQR):", IQR_speed, "\n")

sd_speed <- sd(speed)

cat("Standard Deviation:",sd_speed,"\n")