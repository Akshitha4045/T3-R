# Load necessary library
library(ggplot2)

# Load the data
data <- read.csv("C:/Users/akshi/Desktop/Rossmann Stores Data.xlsx")

# Convert columns to appropriate types if necessary
data$Sales <- as.numeric(data$Sales)
data$Customers <- as.numeric(data$Customers)

# Perform linear regression
model <- lm(Sales ~ Customers, data = data)

# Summary of the linear regression model
summary(model)

# Create scatter plot with regression line
ggplot(data, aes(x = Customers, y = Sales)) +
  geom_point(alpha = 0.5, color = "blue") +
  geom_smooth(method = "lm", color = "red", se = TRUE) +
  labs(title = "Linear Regression: Sales vs. Customers",
       x = "Number of Customers",
       y = "Sales") +
  theme_minimal()

# Load necessary library
library(ggplot2)

# Load the data
data <- read.csv("C:/Users/akshi/Desktop/store.csv")

# Convert columns to appropriate types if necessary
data$Promo2SinceWeek <- as.numeric(data$Promo2SinceWeek)
data$Promo2SinceYear <- as.numeric(data$Promo2SinceYear)

# Perform linear regression
model <- lm(Promo2SinceWeek ~ Promo2SinceYear, data = data)

# Summary of the linear regression model
summary(model)

# Create scatter plot with regression line
ggplot(data, aes(x = Promo2SinceWeek, y = Promo2SinceYear)) +
  geom_point(alpha = 0.5, color = "blue") +
  geom_smooth(method = "lm", color = "red", se = TRUE) +
  labs(title = "Linear Regression: Promo2SinceWeek vs.Promo2SinceYear ",
       x = " Promo2SinceWeek",
       y = "Promo2SinceYear") +
  theme_minimal()