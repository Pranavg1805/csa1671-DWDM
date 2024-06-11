# Data
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

# Define the number of bins
num_bins <- 3

# Split the data into bins
bins <- split(data, cut(data, num_bins, include.lowest = TRUE))

# (a) Smoothing by bin mean
bin_means <- sapply(bins, mean)
smoothed_by_mean <- unlist(lapply(seq_along(bins), function(i) rep(bin_means[i], length(bins[[i]]))))

cat("Smoothing by Bin Mean:", smoothed_by_mean, "\n")

# (b) Smoothing by bin median
bin_medians <- sapply(bins, median)
smoothed_by_median <- unlist(lapply(seq_along(bins), function(i) rep(bin_medians[i], length(bins[[i]]))))

cat("Smoothing by Bin Median:", smoothed_by_median, "\n")

# (c) Smoothing by bin boundaries
smoothed_by_boundaries <- unlist(lapply(bins, function(bin) {
  min_val <- min(bin)
  max_val <- max(bin)
  sapply(bin, function(x) {
    if (abs(x - min_val) <= abs(x - max_val)) {
      return(min_val)
    } else {
      return(max_val)
    }
  })
}))

cat("Smoothing by Bin Boundaries:", smoothed_by_boundaries,"\n")
