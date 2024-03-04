###############################################
# simple example of LASSO logistic regression
# 
# https://glmnet.stanford.edu/articles/glmnet.html#logistic-regression-family-binomial
#
# install.packages('glmnet')
###############################################

###################
# load library
###################
library(glmnet)

#############
# load data
#############
data("BinomialExample")

x <- BinomialExample$x
y <- BinomialExample$y


#############################
# fit LASSO model
#############################
fit_lasso <- glmnet::glmnet(x, y, family = "binomial")

###########
# predict
###########
predict.glmnet(object = fit_lasso, newx = x[1:5,], type = "class", s=c(0.05))

#################
# cross-validate
#################
cvfit_lasso = cv.glmnet(x, y, family="binomial", type.measure = "class")

################################
# plot cross-validation curve
################################
plot(cvfit_lasso)
