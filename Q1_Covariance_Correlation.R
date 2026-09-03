# Q1 - Covariance and Correlation

# Preference data
A <- c(18, 2, 20)
B <- c(22, 28, 10)
C <- c(20, 40, 40)

# 1. Sample covariance between B and C
cov(B, C)

# 2. Sample covariance matrix
cov_matrix <- cov(cbind(A, B, C))
cov_matrix

# 3. Sample correlation between B and C
cor(B, C)

# 4. Sample correlation matrix
cor_matrix <- cor(cbind(A, B, C))
cor_matrix