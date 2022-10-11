data(Titanic)
mdl <- naiveBayes(Survived ~ ., data = Titanic)
mdl
# etc.

predict(mdl, as.data.frame(Titanic)[,1:3])
