


marks <- c(55,60,71,63,55,50,55,58,59,61,63,65,67,71,72,75)



k <- 4

ranks <- rank(marks, ties.method = "first")

frequency_bins <- cut(
  ranks,
  breaks = quantile(ranks, probs = seq(0,1,length.out = k+1)),
  include.lowest = TRUE,
  labels = c("Low","Medium","High","Very High")
)

cat("EQUAL FREQUENCY BINNING\n")
print(data.frame(Marks = marks, Bin = frequency_bins))



width_bins <- cut(
  marks,
  breaks = k,
  include.lowest = TRUE,
  labels = c("Low","Medium","High","Very High")
)

cat("\nEQUAL WIDTH BINNING\n")
print(data.frame(Marks = marks, Bin = width_bins))



data <- matrix(marks, ncol = 1)

set.seed(123)

cluster <- kmeans(data, centers = 3)

cat("\nK-MEANS CLUSTERING\n")

print(data.frame(
  Marks = marks,
  Cluster = cluster$cluster
))

cat("\nCLUSTER CENTERS\n")
print(cluster$centers)

