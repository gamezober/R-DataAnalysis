library(SDSFoundations)

survey <- StudentSurvey

View(survey)

letters <- survey$name_letters
hist(letters)

mean(letters)
sd(letters)

#Create empty vector of 1000 records
xbar5 <- rep(NA, 1000)

#Iterate 1000 random samples of size 5
for(i in 1:1000) {x <-sample(survey$name_letters, size = 5)
#Store each sample mean in empty vector
xbar5[i] <- mean(x)}

#Visualize distribution of sample means
hist(xbar5, xlim=c(2,10))

mean(xbar5)
mean(letters)
s <- sd(letters)
n<-sqrt(15)
s/n
