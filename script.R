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