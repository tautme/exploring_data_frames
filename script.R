cats <- data.frame(coat = c("calico", "black", "tabby"), 
                   weight = c(2.1, 5.0, 3.2), 
                   likes_string = c(1, 0, 1))
write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)

age <- c(2, 3, 5)
cats

cbind(cats, age)

age <- c(2, 3, 5, 12)
cbind(cats, age)


age <- c(2, 3)
cbind(cats, age)

nrow(cats)
length(age)

age <- c(2, 3, 5)
cats <- cbind(cats, age)

newRow <- list("tortoiseshell", 3.3, TRUE, 9)
cats <- rbind(cats, newRow)

cats
levels(cats$coat)

levels(cats$coat) <- c(levels(cats$coat), "tortoiseshell")
cats <- rbind(cats, list("tortoiseshell", 3.3, TRUE, 9))

str(cats)
cats$coat <- as.character(cats$coat)
str(cats)

cats
cats[-4, ]


na.omit(cats)
cats <- na.omit(cats)

cats[,-4]

drop <- names(cats) %in% c("age")
cats[,!drop]

cats <- rbind(cats, cats)
cats

rownames(cats) <- NULL
cats

library(ggplot2)
library(plyr)
library(gapminder)

#REALISTIC EXAMPLE
gapminder <- read.csv("data/gapminder_data.csv")
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv", destfile = "data/gapminder_data.csv")
gapminder <- read.csv("data/gapminder_data.csv")
gapminder <- read.csv("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv")


str(gapminder)
summary(gapminder$country)
typeof(gapminder$year)
class(gapminder$year)
str(gapminder$country)
length(gapminder)
typeof(gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
colnames(gapminder)
head(gapminder)
