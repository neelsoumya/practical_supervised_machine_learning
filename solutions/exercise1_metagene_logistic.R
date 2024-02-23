#####################################################################################################################
# Exercise 1:
# train a classifier to predict yes/no (flag_yes_no). This would be a binary classifier. Do this with cross-validation. 
# Write your own R code to do this task. You can work in groups. Do this in class.
# The data is also available here
# 
# https://github.com/neelsoumya/practical_supervised_machine_learning/blob/main/metagene_score.csv
#
#####################################################################################################################


#######################
# Get data
#######################
df_metagene_score_final = read.csv('metagene_score.csv', 
                                   sep = ',', header = TRUE, 
                                   stringsAsFactors=FALSE, na.strings="..")



# Visualize data

#####################################
# Split into test and training set
#####################################

TRAIN = sample(c(TRUE,FALSE),
               nrow(df_metagene_score_final),
               replace = TRUE)

TEST = (!TRAIN)

df_metagene_score_final_TRAIN = df_metagene_score_final[TRAIN,]
df_metagene_score_final_TEST  = df_metagene_score_final[TEST,]


##################################
# Perform logistic regression
##################################

mylogit <- glm(flag_yes_no ~ metagene_score, 
               data = df_metagene_score_final_TRAIN, 
               family = "binomial")

######################################
# Check linear model distributions
#######################################
# miscstat$check_distribution(model = mylogit)


#######################################
# Visualize parameter distributions
# holds for linear mixed effects models lmer()
#######################################
# cris$visualize_fixed_effects_from_lmer(lmer_result = glm_object_best)
# cris$fixed_effects_from_lmer(lmer_result = glm_object_best)


###############################
# predict on test set
###############################
prob = predict(mylogit, 
               type=c("response"),
               newdata = df_metagene_score_final_TEST)

df_metagene_score_final_TEST$prob = prob


###############################
# Additional code to do 
#   cross-validation 
# on TRAINING SET
###############################
cost <- function(r, pi=0) mean(abs(r-pi)>0.5)
cv_err <- cv.glm(data = df_metagene_score_final_TRAIN,
                 K = 4,
                 cost = cost,
                 glmfit = mylogit
)

# can use the following to perform model selection if necessary
cv_err$delta[1]


