pencil_counts <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

mean_pencils <- mean(pencil_counts)
cat("Mean of pencils:", mean_pencils, "\n")

median_pencils <- median(pencil_counts)
cat("Median of pencils:", median_pencils, "\n")

mode_pencils <- as.numeric(names(sort(table(pencil_counts), decreasing = TRUE)[1]))
cat("Mode of pencils:", mode_pencils,"\n")