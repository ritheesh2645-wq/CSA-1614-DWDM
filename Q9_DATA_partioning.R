
marks <- c(55, 60, 71, 63, 55, 65, 50, 55,
           58, 59, 61, 63, 65, 67, 71, 72, 75)

num_bins <- 3

# Equal-frequency (Equi-depth) Partitioning
bins_eq_frequency <- cut(
  marks,
  breaks = num_bins,
  labels = FALSE
)

print("Equal-Frequency Partitioning:")
print(bins_eq_frequency)

# Equal-width Partitioning
breaks_eq_width <- seq(
  min(marks),
  max(marks),
  length.out = num_bins + 1
)

bins_eq_width <- cut(
  marks,
  breaks = breaks_eq_width,
  labels = FALSE,
  include.lowest = TRUE
)

print("Equal-Width Partitioning:")
print(bins_eq_width)

# Histogram
hist(
  marks,
  breaks = num_bins,
  xlab = "Marks",
  main = "Marks - Data Partitioning"
)