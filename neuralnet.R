# https://srdas.github.io/DLBook/DeepLearningWithR.html
# https://srdas.github.io/DLBook/DeepLearningWithPython.html

# install.packages('neuralnet')
library(neuralnet)

df = data.frame(cbind(x,y))
nn = neuralnet(y~V1+V2+V3+V4+V5+V6+V7+V8+V9,data=df,hidden = 5)

yy = nn$net.result[[1]]

yhat = matrix(0,length(y),1)
yhat[which(yy > mean(yy))] = 1
yhat[which(yy <= mean(yy))] = 0

print(table(y,yhat))
