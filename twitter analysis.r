library(ggplot2)

#read in file. 
x <- read.csv(file.choose())

#quickly see some insights about file
str(x)

#initialize variable. Data is the dataset, we have one id.
var <- ggplot(data = x, aes(x = id))

#Create the bar graph
var + geom_bar()

#refactor the id so that they are numerical values instead of R-Factors
factor(x$id)
x$id <- factor(x$id)

#Refactor the retweet_counts so that they are numerical values instead of R-Factors
x$retweet_count <- factor(x$retweet_count)

#Create graph 2 the retweet by id graph
var2 <- ggplot(data = x, aes(x = id, y = retweet_count))
var2+geom_point()


