temperature <- c(55,60,71,63,55,65,50,55,58,59,61,63,65,67,71,72,75)

# Equal Frequency Partitioning
sorted_temp <- sort(temperature)

bin1 <- sorted_temp[1:6]
bin2 <- sorted_temp[7:12]
bin3 <- sorted_temp[13:17]

cat("Equal Frequency Bins:\n")
print(bin1)
print(bin2)
print(bin3)


# Equal Width Partitioning
min_temp <- min(temperature)
max_temp <- max(temperature)

width <- (max_temp - min_temp) / 3

breaks <- seq(min_temp, max_temp, length.out = 4)

equal_width <- cut(temperature,
                   breaks = breaks,
                   include.lowest = TRUE)

cat("Equal Width Bins:\n")
print(equal_width)

cat("Frequency of each bin:\n")
print(table(equal_width))


# K-Means Clustering
set.seed(123)

temp_matrix <- matrix(temperature, ncol = 1)

kmeans_result <- kmeans(temp_matrix, centers = 3)

cat("K-Means Cluster Centers:\n")
print(kmeans_result$centers)

cat("Cluster Assignment:\n")
print(kmeans_result$cluster)

cat("Values in Each Cluster:\n")

for(i in 1:3) {
  cat("Cluster", i, ":\n")
  print(temperature[kmeans_result$cluster == i])
}


# Histogram
hist(temperature,
     main = "Histogram of Temperature Readings",
     xlab = "Temperature",
     ylab = "Frequency",
     breaks = 6)