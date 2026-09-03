

x <- c(200, 300, 400, 600, 1000)

# Min-Max Normalization
min_max_norm <- (x - min(x)) / (max(x) - min(x))
min_max_norm

# Z-Score Normalization
z_score_norm <- (x - mean(x)) / sd(x)
z_score_norm