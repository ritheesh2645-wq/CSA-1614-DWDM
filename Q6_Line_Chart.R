# Q6 - Line Chart

# Sample data
months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun")
sales <- c(120, 150, 180, 140, 200, 230)

# Create line chart
plot(
  sales,
  type = "o",
  main = "Monthly Sales",
  xlab = "Month",
  ylab = "Sales",
  xaxt = "n"
)

# Add month names to x-axis
axis(
  1,
  at = 1:length(months),
  labels = months
)