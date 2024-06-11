# Sample data
age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61)
percent_fat <- c(9.5, 26.5, 7.8, 17.8, 31.4, 25.9, 27.4, 27.2, 31.2, 34.6, 42.5, 28.8, 33.4, 30.2, 34.1, 32.9, 41.2, 35.7)

# (a) Calculate mean, median, and standard deviation
mean_age <- mean(age)
median_age <- median(age)
sd_age <- sd(age)

mean_fat <- mean(percent_fat)
median_fat <- median(percent_fat)
sd_fat <- sd(percent_fat)

cat("Mean Age:", mean_age, "\n")
cat("Median Age:", median_age, "\n")
cat("Standard Deviation of Age:", sd_age, "\n")

cat("Mean %Fat:", mean_fat, "\n")
cat("Median %Fat:", median_fat, "\n")
cat("Standard Deviation of %Fat:", sd_fat, "\n")

# (b) Draw boxplots for age and %fat
par(mfrow = c(1, 2)) # Set up the plotting area to have 2 plots side by side

boxplot(age, main = "Boxplot of Age", ylab = "Age")
boxplot(percent_fat, main = "Boxplot of %Fat", ylab = "%Fat")

# (c) Draw scatter plot and Q-Q plot
par(mfrow = c(2, 2)) # Set up the plotting area to have 4 plots (2x2 grid)

# Scatter plot
plot(age, percent_fat, main = "Scatter Plot of Age vs %Fat", xlab = "Age", ylab = "%Fat")

# Q-Q plot for age
qqnorm(age, main = "Q-Q Plot of Age")
qqline(age)

# Q-Q plot for %fat
qqnorm(percent_fat, main = "Q-Q Plot of %Fat")
qqline(percent_fat)

# Reset the plotting area
par(mfrow=c(1,1))
