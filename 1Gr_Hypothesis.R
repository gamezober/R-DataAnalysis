library(SDSFoundations)
bull <- BullRiders
per <- bull$RidePer

mean(per)

sd(per)

hist(per, main = 'Histogram of Bull Ride Percentage', xlab = 'Percentage')

t.test(per, mu=.50)

earn <- mean(bull$Earnings)
earnper<-bull$Earnings
event <-bull$Events
hist(earnper)

logearn <- log(earnper)
hist(logearn)
logmean <- mean(logearn)
mean(logearn)

perevent <- earnper/event
hist(perevent)
logper <- log(perevent)
hist(logper)
mean(logper)
pnorm(.975)

logpermean <- mean(logper)

logpersd <- sd(logper)

chips <- c(29.4, 29.0, 28.4, 28.8, 28.9, 29.3, 28.5, 28.2)
mean(chips)
sd(chips)
t.test(chips, mu = 28.5)

1.67*2.0639

t.test(logper, mu= 8.77)
mean(perevent) + 3453.123
t.test(perevent, 8517.123)
