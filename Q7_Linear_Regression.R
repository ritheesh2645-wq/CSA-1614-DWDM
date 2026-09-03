# Q7 - Linear Regression

# Given data
hours <- c(1, 2, 3, 4, 5, 6, 7, 8)
marks <- c(35, 40, 50, 55, 65, 70, 75, 85)

# Create linear regression model
model <- lm(marks ~ hours)

# Display model summary
summary(model)

# Display coefficients
cat("Intercept =", coef(model)[1], "\n")
cat("Slope =", coef(model)[2], "\n")

# Predict marks
predicted_marks <- predict(model)

cat("\nPredicted Marks:\n")
print(predicted_marks)

# Scatter plot
plot(
  hours,
  marks,
  main = "Hours Studied vs Marks",
  xlab = "Hours Studied",
  ylab = "Marks",
  pch = 19
)

# Add regression line
abline(model)

# Predict marks for 9 hours of study
new_data <- data.frame(hours = 9)
prediction <- predict(model, newdata = new_data)

cat("\nPredicted marks for 9 hours of study:\n")
print(prediction)