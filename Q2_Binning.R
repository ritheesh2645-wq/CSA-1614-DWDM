# Q2 - Equal Frequency Binning and Data Smoothing

# All Electronics price dataset
data <- c(
  1, 1, 5, 5, 5, 5, 5, 8, 8,
  10, 10, 10, 10, 12,
  14, 14, 14,
  15, 15, 15, 15, 15, 15,
  18, 18, 18, 18, 18, 18,
  20, 20, 20, 20, 20, 20, 20,
  21, 21, 21, 21,
  25, 25, 25, 25, 25,
  28, 28, 30
)

# Sort the data
data <- sort(data)

# Display dataset
print(data)

# --------------------------------------------------
# (i) Equal-frequency partitioning with bin size = 3
# --------------------------------------------------

bin_size <- 3

bins <- split(data, ceiling(seq_along(data) / bin_size))

cat("\nEqual-frequency bins:\n")
print(bins)

# --------------------------------------------------
# (ii) Smoothing by bin means
# --------------------------------------------------

bin_means <- sapply(bins, mean)

smoothed_by_mean <- lapply(bins, function(x) {
  rep(mean(x), length(x))
})

cat("\nBin means:\n")
print(bin_means)

cat("\nData smoothed by bin means:\n")
print(smoothed_by_mean)

# --------------------------------------------------
# Smoothing by bin boundaries
# --------------------------------------------------

smoothed_by_boundary <- lapply(bins, function(x) {
  lower <- min(x)
  upper <- max(x)
  
  sapply(x, function(value) {
    if (abs(value - lower) <= abs(value - upper)) {
      lower
    } else {
      upper
    }
  })
})

cat("\nData smoothed by bin boundaries:\n")
print(smoothed_by_boundary)

# --------------------------------------------------
# (iii) Histogram
# --------------------------------------------------

hist(
  data,
  breaks = 14,
  main = "Histogram of All Electronics Prices",
  xlab = "Price",
  ylab = "Frequency"
)