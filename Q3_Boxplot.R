# Q3 - Class A and Class B Analysis

# Marks of Class A
class_A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)

# Marks of Class B
class_B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

# -----------------------------
# (i) Mean, Median and Range
# -----------------------------

cat("Class A\n")
cat("Mean =", mean(class_A), "\n")
cat("Median =", median(class_A), "\n")
cat("Range =", max(class_A) - min(class_A), "\n\n")

cat("Class B\n")
cat("Mean =", mean(class_B), "\n")
cat("Median =", median(class_B), "\n")
cat("Range =", max(class_B) - min(class_B), "\n")

# -----------------------------
# (ii) Boxplot
# -----------------------------

boxplot(
  class_A,
  class_B,
  names = c("Class A", "Class B"),
  main = "Comparison of Class A and Class B",
  ylab = "Marks"
)