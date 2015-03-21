library(SDSFoundations)
film <- FilmData
View(film)

table(film$Rating)

#Calculate avg film budget of each group
aggregate(Budget~Rating, film, mean)

aggregate(Budget~Rating, film, sd)

#Visualize group means and variability
boxplot(film$Budget~film$Rating, main= "Film Budgets by Rating", ylab= "Budget", xlab= "MPAA Rating")

#Run ANOVA
modelbud <- aov(film$Budget~film$Rating)
summary(modelbud)

#Run post-hoc
TukeyHSD(modelbud)

film$budgcat[film$Budget < 100.00] <- "low-budget"
film$budgcat[film$Budget >= 100.00 & film$Budget < 150.00] <- "medium-budget"
film$budgcat[film$Budget >= 150.00] <- "high-budget"

table(film$budgcat)

aggregate(Pct.Dom~budgcat, film, mean)
boxplot(film$Pct.Dom~film$budgcat)
modelbudgcat <- aov(film$Pct.Dom~film$budgcat)
summary(modelbudgcat)
TukeyHSD(modelbudgcat)
