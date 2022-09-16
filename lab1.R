help(data.frame)

help(read.csv)
EPI_data <- read.csv(file.choose(), header = TRUE)
head(EPI_data)
help(data)
data()

View(EPI_data)
attach(EPI_data)
fix(EPI_data)
EPI
tf <- is.na(EPI) #records True values if the value is NA
E <- EPI[!tf] #filters out NA values, new array

summary(EPI) #stats
fivenum(EPI, na.rm = TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30.,95.,1.0), prob = TRUE)
lines(density(EPI, na.rm = TRUE, bw = 1.)) #try bw = "SJ"

lines(density(EPI, na.rm = TRUE, bw = "SJ"))
rug(EPI)
help(stem)


plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI); qqline(EPI)

x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)



#REPEAT WITH DALY, WATER_H

#----------------------------------DALY-----------------------------------------

DALY
tf <- is.na(DALY) #records True values if the value is NA
E <- DALY[!tf] #filters out NA values, new array

summary(DALY) #stats
fivenum(DALY, na.rm = TRUE)
stem(DALY)
hist(DALY)

hist(DALY, seq(30.,95.,1.0), prob = TRUE) # need to correct the range for x
help(distributions)


lines(density(DALY, na.rm = TRUE, bw = 1.)) #try bw = "SJ"

lines(density(DALY, na.rm = TRUE, bw = "SJ"))
rug(DALY)
help(stem)


plot(ecdf(DALY), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(DALY); qqline(DALY)

x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

#-------------------------------------------------------------------------------



#----------------------------------WATER_H--------------------------------------

WATER_H
tf <- is.na(WATER_H) #records True values if the value is NA
E <- WATER_H[!tf] #filters out NA values, new array

summary(WATER_H) #stats
fivenum(WATER_H, na.rm = TRUE)
stem(WATER_H)
hist(WATER_H)

hist(WATER_H, seq(30.,95.,1.0), prob = TRUE) # need to correct the range for x
help(distributions)


lines(density(WATER_H, na.rm = TRUE, bw = 1.)) #try bw = "SJ"

lines(density(WATER_H, na.rm = TRUE, bw = "SJ"))
rug(WATER_H)
help(stem)


plot(ecdf(WATER_H), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(WATER_H); qqline(WATER_H)

x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

#-------------------------------------------------------------------------------



#COMPARING DISTRIBUTIONS
boxplot(EPI,DALY)
qqplot(EPI,DALY)





# EXERCISE 2 -------------------------------------------------------------------

EPILand<-EPI[!Landlock]
Eland <- EPILand[!is.na(EPILand)]
hist(ELand)   #giving "object 'ELand' not found"
hist(ELand, seq(30., 95., 1.0), prob=TRUE)

#EPI_South_Asia <- EPI[<what is this>]

#-------------------------------------------------------------------------------

#PART 2

multivariate <- read.csv(file.choose(), header = TRUE)
attach(multivariate)
mm<-lm(Homeowners~Immigrant)
help(lm)
mm

summary(mm)$coef 

plot(Homeowners~Immigrant) 
help(abline)
abline(mm) 
abline(mm,col=2,lwd=3)

newImmigrantdata <- data.frame(Immigrant = c(0, 20))
mm %>% predict(newImmigrantdata)


#PART 1 CODE--------------------------------------------------------------------
plot(ecdf(EPI_data$EPI),do.points=FALSE,verticals = TRUE)
plot(ecdf(EPI_data$EPI),do.points=TRUE,verticals = TRUE) # points are visible on the plot.
par(pty="s")
help("qqnorm") # read the RStudio documentation for qqnorm help("qqplot") # read the RStudio documentation for qqplot qqnorm(EPI_data$EPI)
qqline(EPI_data$EPI) # adding the line on the Q-Q plot
x <- seq(30,95,1)
x
x2 <-seq(30,95,2)
x2
x2 <-seq(30,96,2)
x2
qqplot(qt(ppoints(250),df=5),x, xlab = "Q-Q plot")
qqline(x)
--------------------------------------------------------------------------------

ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut))

dplyr::count()

    diamonds
      count(cut)

ggplot(data = diamonds) + geom_histogram(mapping = aes(x = carat), binwidth = 0.5)

smaller <- diamonds %>% filter(carat < 3) ggplot(data = smaller, mapping = aes(x = carat)) + geom_histogram(binwidth = 0.1)

ggplot(data = smaller, mapping = aes(x = carat, color = cut)) + geom_freqpoly(binwidth = 0.1)
#freqpoly() overlays multiple histograms in the same plot, but it uses lines instead of bars

ggplot(data = smaller, mapping = aes(x = carat)) + geom_histogram(binwidth = 0.01)

ggplot(data = faithful, mapping = aes(x = eruptions)) + geom_histogram(binwidth = 0.25)

ggplot(diamonds) + geom_histogram(mapping = aes(x = y), binwidth = 0.5)

ggplot(diamonds) + geom_histogram(mapping = aes(x = y), binwidth = 0.5) + coord_cartesian(ylim = c(0, 50))



unusual <- diamonds %>% 
  filter(y < 3 | y > 20) %>% 
  arrange(y)
unusual

# diamonds2 <- diamonds %>% filter(between(y, 3, 20))
diamonds2 <- diamonds %>% mutate(y = ifelse(y < 3 | y > 20, NA, y))
ggplot(data = diamonds2, mapping = aes(x = x, y = y)) + geom_point()
ggplot(data = diamonds2, mapping = aes(x = x, y = y)) + geom_point(na.rm = TRUE)

