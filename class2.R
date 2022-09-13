library(MASS)
attach(Boston)
?Boston
help("Boston")
head(Boston)
dim(Boston)
names(Boston)
nrow(Boston)
ncol(Boston)
str(Boston)
summary(Boston)
Boston$crim
summary(Boston$crim)

library(ISLR)
data(Auto)
head(Auto)
names(Auto)
summary(Auto)

fivenum(Auto$mpg)
median(Auto$horsepower)
hist(Auto$mpg)
boxplot(Auto$mpg)
#summary(Auto$mpg)


help(read.csv)
data2 <- read.csv(file.choose(), header = TRUE)
#the left arrow is equivalent to the equal sign (=)
#T is equivalent to TRUE 
head(data2)
