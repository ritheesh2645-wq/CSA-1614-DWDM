# Q4 - Data Normalization

# Given data
data <- c(200, 300, 400, 600, 1000)

# --------------------------------------------------
# (a) Min-Max Normalization
# Setting minimum = 0 and maximum = 1
# --------------------------------------------------

min_value <- min(data)
max_value <- max(data)

min_max <- (data - min_value) / (max_value - min_value)

cat("Min-Max Normalization:\n")
print(min_max)

# --------------------------------------------------
# (b) Z-Score Normalization
# --------------------------------------------------

mean_value <- mean(data)
sd_value <- sd(data)

z_score <- (data - mean_value) / sd_value

cat("\nZ-Score Normalization:\n")
print(z_score)

# --------------------------------------------------
# Example from the question
# F = $80,000
# Minimum = $50,000
# Maximum = $100,000
# --------------------------------------------------

F <- 80000
F_min <- 50000
F_max <- 100000

F_normalized <- (F - F_min) / (F_max - F_min)

cat("\nMin-Max normalized value of F = $80,000:\n")
print(F_normalized)