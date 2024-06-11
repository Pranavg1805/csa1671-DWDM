marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
num_bins <- 3

# (a) Equal-Frequency (Equi-Depth) Partitioning
sorted_marks <- sort(marks)
bin_size <- length(marks) / num_bins
equal_freq_bins <- split(sorted_marks, ceiling(seq_along(sorted_marks) / bin_size))

# Create histogram for equal-frequency partitioning
hist_equal_freq <- unlist(lapply(seq_along(equal_freq_bins), function(i) rep(i, length(equal_freq_bins[[i]]))))

par(mfrow = c(2, 1))  # Set up plotting area for two histograms
hist(hist_equal_freq, breaks = seq(0.5, num_bins + 0.5, by = 1), 
     main = "Histogram with Equal-Frequency Partitioning",
     xlab = "Bins", ylab = "Frequency", col = "lightblue", xaxt = 'n')
axis(1, at = 1:num_bins, labels = paste("Bin", 1:num_bins))

# (b) Equal-Width Partitioning
min_mark <- min(marks)
max_mark <- max(marks)
bin_width <- (max_mark - min_mark) / num_bins
equal_width_bins <- cut(marks, breaks = seq(min_mark, max_mark, by = bin_width), include.lowest = TRUE)

# Create histogram for equal-width partitioning
hist(equal_width_bins, breaks = num_bins, 
     main = "Histogram with Equal-Width Partitioning",
     xlab = "Bins", ylab = "Frequency", col = "lightgreen", xaxt = 'n')
axis(1, at = 1:num_bins, labels = paste("Bin", 1:num_bins))

# Reset plotting area
par(mfrow=c(1,01))
