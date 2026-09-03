x <- c(45,60,75,90,120,80,55,100)

# Min-Max Normalization
minmax <- (x-min(x))/(max(x)-min(x))
print(minmax)

# Z-score Normalization
z <- (x-mean(x))/sd(x)
print(z)

# Z-score using Mean Absolute Deviation
mad_value <- mean(abs(x-mean(x)))
z_mad <- (x-mean(x))/mad_value
print(z_mad)

# Decimal Scaling Normalization
decimal <- x/1000
print(decimal)