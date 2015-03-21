library(SDSFoundations)
acl <- AustinCityLimits
View(acl)

#Goodness of Fit
gender_tab<-table(acl$Gender)
gender_tab

ExpGender <- c(.50,.50)
chisq.test(gender_tab, p=ExpGender)

#Test of Independence
gender_top10 <-table(acl$Gender, acl$BB.wk.top10)
gender_top10

chisq.test(gender_top10, correct=FALSE)$expected

chisq.test(gender_top10, correct=FALSE)
