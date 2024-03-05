#########################################
# Exercise 3
# * Download the data from

# https://github.com/neelsoumya/practical_supervised_machine_learning/blob/main/diabetes.csv
# 
# 
# * Remember to visualize the data and normalize features
# 
# * Build a random forest model to predict diabetes outcome (0/1)
# 
# * Plot the out of bag (OOB) error as a function of the number of trees
# 
#  adapted from:
#      https://rpubs.com/archita25/677243
########################################


#################
# load library
#################
library(randomForest)

#################
# load data
#################
data <- read.csv("diabetes.csv", sep = ",", header = TRUE, 
                 stringsAsFactors = FALSE, na.strings = "..")

View(data)


################
# data munging
################
data$Outcome <- as.factor(data$Outcome)

################
# scale features
################
data$Pregnancies <- scale(data$Pregnancies)
data$Glucose <- scale(data$Glucose)
data$BloodPressure <- scale(data$BloodPressure)
data$SkinThickness <- scale(data$SkinThickness)
data$Insulin <- scale(data$Insulin)
data$BMI <- scale(data$BMI)
data$DiabetesPedigreeFunction <- scale(data$DiabetesPedigreeFunction)
data$Age <- scale(data$Age)


#####################
# use random forest
#####################
set.seed(123)

rf_model <- randomForest::randomForest(Outcome ~ ., data = data)

rf_model


################################
# plot out of bag error (OOB)
################################

rf_model$err.rate

rf_model$err.rate[,"OOB"]

nrow(rf_model$err.rate)

# make variables
oob_error = rf_model$err.rate[,"OOB"] # OOB error
vector_num_trees = 1:nrow(rf_model$err.rate) # number of trees

# plot
plot(vector_num_trees, oob_error, 
     xlab = "Number of trees", ylab = "OOB error")

