require(kknn)

data(iris)
m <- dim(iris)[1]
val <- sample(1:m, size = round(m/3), replace = FALSE, prob = rep(1/m, m)) 

iris.learn <- iris[-val,]
iris.valid <- iris[val,]
iris.kknn <- kknn(Species~., iris.learn, iris.valid, distance = 1, kernel = "triangular")

summary(iris.kknn)
fit <- fitted(iris.kknn)
table(iris.valid$Species, fit)
pcol <- as.character(as.numeric(iris.valid$Species))
pairs(iris.valid[1:4], pch = pcol, col = c("green3", "red")[(iris.valid$Species != fit)+1])

# the valid measurements in green, invalid in red?
help('table') # not found
help('sample') # sample takes a sample of the specified size from the elements 
               # of x using either with or without replacement.
help('fitted') # fitted is a generic function which extracts fitted values from 
               # objects returned by modeling functions. fitted.values is an alias for it.
help('dim') # Retrieve or set the dimension of an object.
