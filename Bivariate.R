library(SDSFoundations)
bull <- BullRiders
bull$RidesPerEvent <- bull$Rides/bull$Events
#scatterplot data
plot(bull$RidesPerEvent, bull$Place)

#fit linear model
abline(lm(bull$Place~bull$RidesPerEvent))
par(mar=c(1,1,1,1))
cor(bull$Place, bull$RidesPerEvent)


bullEarn <- bull$Earnings
rideper <- bull$RidePer
points <- bull$CupPoints
plot(bullEarn, points)
cor(points, bullEarn)
cor(rideper, bullEarn)

#filter by max earnings
which(bullEarn == max(bullEarn))
plot(points, bullEarn)
nooutlier <- bull [-1,]
cor(nooutlier$RidePer, nooutlier$Earnings)
cor(nooutlier$RidePer, nooutlier$CupPoints)

