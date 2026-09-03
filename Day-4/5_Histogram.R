# Q5 - Histogram of AirPassengers Dataset

# Load the built-in AirPassengers dataset
data("AirPassengers")

# Display the dataset
print(AirPassengers)

# Create histogram
hist(
  AirPassengers,
  main = "Histogram of AirPassengers",
  xlab = "Number of Passengers",
  ylab = "Frequency"
)