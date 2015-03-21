library(SDSFoundations)
acl <- AustinCityLimits



genre <-table(acl$Genre)
grammy <-table(acl$Grammy)

twoway <- table(acl$Grammy,acl$Genre)
twoway

par(mar=c(.2,.2,.2,.2))
barplot(twoway, legend = T, beside = T, xlab=genre, ylab=gender)
prop.table(twoway)
prop.table(twoway,1)
prop.table(twoway,2)

116-49
prop.table(grammy)
prop.table(genre)

table(twoway)
table(genre)
twoway
5/116
genre
prop.table(twoway,2)
5/17
prop.table(grammy)
tweet <- acl$Twitter.100k
table(tweet)
fb <- acl$Facebook.100k
agegroup <- acl$Age.Group
twoway <- table(fb,agegroup)
prop.table(twoway, 2)
