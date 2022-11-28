data(iris)

str(iris)

install.packages("caTools")
install.packages("randomForest")

library(caTools)
library(randomForest)

split <- sample.split(iris, SplitRatio = .7)
split

train <- subset(iris, split == "TRUE")
test <- subset(iris, split == "FALSE")

set.seed(120)

classifier_RF = randomForest(x = train[-5], y = train$Species, ntree = 500)
classifier_RF

y_pred= predict(classifier_RF, newdata = test[-5])
y_pred

confusion_matrix = table(test[,5], y_pred)
confusion_matrix

plot(classifier_RF)

suppressWarnings({importance(classifier_RF)})

varImpPlot(classifier_RF)
