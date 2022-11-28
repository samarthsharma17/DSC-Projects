install.packages("ggplot2")

library("ggplot2")

x <- c(5.1,5.3,6.1,5.9,6.9,7.2,5.8,4.7,4.9,5.0)

y <- c(63,78,59,64,68,43,57,89,98,77)

relation <- lm(y~x)

relation
summary(relation)

a <- data.frame(x=5.6)
result <- predict(relation,a)
print(result)

png(file = "linear_regression.png")

plot(y,x,col = "red",main = "Height and Weight Regression", abline(lm(x~y)), cex=1.3, pch=16, xlab="Weight in Kg", ylab="Height in cm")
dev.off()