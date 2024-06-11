age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61)

age_value <- 35
min_age <- min(age)
max_age <- max(age)
min_max_normalized_value <- (age_value - min_age) / (max_age - min_age)
cat("Min-Max Normalized Value for age 35:", min_max_normalized_value, "\n")

mean_age <- mean(age)
sd_age <- 12.94 
z_score_normalized_value <- (age_value - mean_age) / sd_age
cat("Z-Score Normalized Value for age 35:", z_score_normalized_value, "\n")

max_abs_age <- max(abs(age))
j <- ceiling(log10(max_abs_age))
decimal_scaled_value <- age_value / (10^j)
cat("Decimal Scaled Value for age 35:", decimal_scaled_value,"\n")