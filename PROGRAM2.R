intervals <- c(1, 5, 15, 20, 50, 80, 110)
frequencies <- c(200, 450, 300, 1500, 700, 44)
cumulative_frequencies <- cumsum(frequencies)
N <- sum(frequencies)
median_class_index <- which(cumulative_frequencies >= N / 2)[1]
L <- intervals[median_class_index]
F <- ifelse(median_class_index == 1, 0, cumulative_frequencies[median_class_index - 1])
f <- frequencies[median_class_index]
h <- intervals[median_class_index + 1] - intervals[median_class_index]
median <- L + ((N / 2 - F) / f) * h
cat("The approximate median value is:",median,"\n")