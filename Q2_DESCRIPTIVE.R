

age <- c(13,15,16,16,19,20,20,21,22,22,
         25,25,25,25,30,33,33,35,35,35,
         35,36,40,45,46,52,70)

# Mean
mean(age)

# Median
median(age)

# Mode
mode_age <- names(table(age))[table(age) == max(table(age))]
mode_age

# Midrange
range(age)

# First Quartile
quantile(age, 0.25)

# Third Quartile
quantile(age, 0.75)