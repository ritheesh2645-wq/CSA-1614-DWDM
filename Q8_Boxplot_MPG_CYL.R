# Q8 - Boxplot of MPG vs Cylinders

# Load mtcars dataset
data(mtcars)

# View the dataset
print(mtcars)

# Convert cylinders to a categorical variable
mtcars$cyl <- as.factor(mtcars$cyl)

# Create boxplot
boxplot(
  mpg ~ cyl,
  data = mtcars,
  main = "MPG vs Number of Cylinders",
  xlab = "Number of Cylinders",
  ylab = "Miles per Gallon (MPG)"
)