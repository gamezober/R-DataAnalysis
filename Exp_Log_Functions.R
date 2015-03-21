library(SDSFoundations)
world<- WorldBankData
us<-world[world$Country.Code=="USA",]
us_select <- us[us$year >= 1990,]
us_select$internet.mil <- us_select$internet.users/1000000
us_select$time <- us_select$year-1990
us_select_10 <- us_select[us_select$time<10,]

#Fit to Exponential Model
expFit(us_select_10$time, us_select_10$internet.mil)

#Fit to Logistic Model
logisticFit(us_select_10$time, us_select_10$internet.mil)

e<-expFitPred(us_select_10$time, us_select_10$internet.mil, 16)
l<-logisticFitPred(us_select_10$time, us_select_10$internet.mil, 16)

us_select[us_select$time == 16, c("Country", "year", "internet.mil")]

er <- us_select$internet.mil[us_select$time==16]-e

lr <- us_select$internet.mil[us_select$time==16]-l
er
lr
tripleFit(us_select$time, us_select$internet.mil)
expFitPred(us_select_10$time, us_select_10$internet.mil, 22)
us_select$internet.mil[us_select$time==16]
