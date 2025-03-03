# https://www.geeksforgeeks.org/perceptron-in-r/

#Step 1: Prepare the Dataset
#First we will create a dataset.

# Sample dataset
data <- data.frame(
  x1 = c(2, 3, 10, 6, 4),
  x2 = c(1, 3, 10, 6, 2),
  y = c(0, 0, 1, 1, 0)
)

#Step 2: Initialize Weights and Bias
#Next the Perceptron starts with random weights and bias.

# Initialize weights and bias
weights <- c(0.5, 0.5)
bias <- 0.5

#Step 3: Define the Activation Function
#Now set the activation function.

# Activation function
activation <- function(weighted_sum) {
  if (weighted_sum >= 0) {
    return(1)
  } else {
    return(0)
  }
}

#Step 4: Train the Perceptron
#Train the perceptron.

# Training the Perceptron
learning_rate <- 0.1
epochs <- 10

for (epoch in 1:epochs) {
  for (i in 1:nrow(data)) {
    # Calculate weighted sum
    weighted_sum <- sum(data[i, 1:2] * weights) + bias
    
    # Get prediction
    prediction <- activation(weighted_sum)
    
    # Calculate error
    error <- data$y[i] - prediction
    
    # Update weights and bias
    weights <- weights + learning_rate * error * data[i, 1:2]
    bias <- bias + learning_rate * error
  }
}

# Final weights and bias
print(weights)
print(bias)

#Step 5: Making Predictions
#After training, the Perceptron can be used to make predictions on new data.

# Predict function
predict <- function(x1, x2) {
  weighted_sum <- sum(c(x1, x2) * weights) + bias
  return(activation(weighted_sum))
}

# Example prediction
predict(5, 3)


