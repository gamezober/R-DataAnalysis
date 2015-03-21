library(SDSFoundations)
wr <- WorldRecords
womenmile <- wr[wr$Event=="Womens Mile",]
menmile <- wr[wr$Event=="Mens Mile",]
plot(menmile$Year,menmile$Record, main = 'Mens Mile World Records Over Time', xlab='Year', ylab='World Record Time(s)',pch=16)
plot(womenmile$Year,womenmile$Record, main = 'Womens Mile World Records Over Time', xlab='Year', ylab='World Record Time(s)',pch=16)

linFit(menmile$Year, menmile$Record)
linFit(womenmile$Year,womenmile$Record)
1008.471/-.393
2190.283/.973
mensvault<- wr[wr$Event=="Mens Polevault" & wr$Year > 1970,]
plot(mensvault$Year, mensvault$Record)
linFit(mensvault$Year, mensvault$Record)
