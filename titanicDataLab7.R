data("Titanic")
require(rpart)
View(Titanic)
Survived_rpart <- rpart(Survived ~ Freq, data = Titanic)
plot(Survived_rpart)
text(Survived_rpart)

treeSurvived <- ctree(Survived ~ ., data = Titanic)
plot(treeSurvived)

cforest(Survived ~., data = Titanic, controls = cforest_control(mtry=2, mincriterion=0))

library(tree)
tr <- tree(Survived ~ ., data = Titanic)
tr
tr$frame
plot(tr)
text(tr)

#Still working on finishing this file

#Survivedlabel <- Titanic$Survived
#Titanic$Survived <- NULL
#str(Titanic)

#TitanicScale <- as.data.frame(scale(Titanic))
#summary(TitanicScale)

#distMat <- dist(TitanicScale, method = 'euclidean')


#hclustAvg <- hclust(distMat, method = 'average')
#plot(hclustAvg)
