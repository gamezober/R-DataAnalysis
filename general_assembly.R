rm(list = ls(())
setwd('Downloads')
options(scipen=999)
library(ggplot2)
library(xts)
library(stringr)
getwd()
ks_data <- read.csv(file = 'DSI_Kickstarterscrape_dataset.csv')

#MEAN OF PLEDGED DOLLARS
mean(ks_data$pledged, na.rm = TRUE)

#HISTOGRAM OF NUMBER OF BACKERS
hist(ks_data$duration)

ks_data_fail <- ks_data[ks_data$status == 'failed',]
ks_data_success <- ks_data[ks_data$status == 'successful',]

ks_data_total <- ks_data[ks_data$status == 'failed' | ks_data$status == 'successful',]

median(ks_data_success$duration, na.rm = TRUE)

median(ks_data_fail$duration, na.rm = TRUE)

ggplot2::ggplot(data= ks_data_total) +
  geom_smooth(mapping = aes(x= goal, y= pledged, color = status))

?ggplot

?xts
str(ks_data)
ks_data$weekday <- sapply(ks_data$funded.date, function(x) str_split(x, ' ')[[1]][[1]])
ks_data$month <- sapply(ks_data$funded.date, function(x) str_split(x, ' ')[[1]][[3]])
ks_data_fail$month <- sapply(ks_data_fail$funded.date, function(x) str_split(x, ' ')[[1]][[3]])

barplot(prop.table(table(ks_data_total$status, ks_data_total$weekday)), col = c("yellow", "pink", "green", "lightgreen"), axes = FALSE, main = "Campaign Completion Dates by Month")

?barplot

table(ks_data_success$month)
ks_data$month <- factor(ks_data$month, levels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))


