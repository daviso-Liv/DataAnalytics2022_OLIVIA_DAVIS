data(swiss)
sclass <- kmeans(swiss[2:6], 3) 
sclass
table(sclass$cluster, swiss[,1])    

help(kmeans)

#plot the cluster:
library(cluster)
help("clusplot")
clusplot(swiss, sclass$cluster, color = TRUE, shade = TRUE, labels = 0, lines = 0)
#the two components explain 73.13% of the point variability