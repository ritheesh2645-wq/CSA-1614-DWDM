

age <- c(23,23,27,27,39,41,47,49,50,
         52,54,54,56,57,58,58,60,61)

value <- 35

# (i) Min-Max Normalization
min_max <- (value - min(age)) / (max(age) - min(age))
print(min_max)

# (ii) Z-Score Normalization
mean_age <- mean(age)
sd_age <- 12.94

z_score <- (value - mean_age) / sd_age
print(z_score)

# (iii) Decimal Scaling
j <- ceiling(log10(max(abs(age))))
decimal_scaling <- value / (10^j)
print(decimal_scaling)