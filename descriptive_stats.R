library(SDSFoundations)
animaldata <- AnimalData


adults <- animaldata[animaldata$Age.Intake >= '1',]

adults$Animal.Type)

adultDogs <- adults[adults$Animal.Type=='Dog',]
adultCats <- adults[adults$Animal.Type=='Cat',]

#z - score function
#x <- mean(adultCats$Weight)
#y <- sd(adultCats$Weight)

#z <- (13-x)/y
#z
#1-pnorm(z)

fivenum(adultDogs$Weight)
x <- mean(adultDogs$Weight)
y <- sd(adultDogs$Weight)
z <- (13-x)/y
z
1-pnorm(z)

fivenum(adultCats$Weight)
Dogs <-animaldata[animaldata$Animal.Type == 'Dog',]
mode(Dogs$Intake.Type)
plot(Dogs$Intake.Type, xlab = 'condition', ylab = 'frequency')

table(Dogs$Intake.Type)
x <- which(Dogs$Intake.Type == 'Owner Surrender')
x <-Dogs[Dogs$Intake.Type == 'Owner Surrender',]
table(x$Outcome.Type)
y <- x[x$Outcome.Type == 'Return to Owner',]
mean(y$Days.Shelter)
