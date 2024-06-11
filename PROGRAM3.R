data <- c(200, 300, 400, 600, 1000)
min_val <- min(data)
max_val <- max(data)
min_max_normalized <- (data - min_val) / (max_val - min_val)
cat("Min-Max Normalized Data (min=0, max=1):", min_max_normalized, "\n")
mean_val <- mean(data)
sd_val <- sd(data)
z_score_normalized <- (data - mean_val) / sd_val
cat("Z-Score Normalized Data:", z_score_normalized,"\n")