library(SDSFoundations)

post <- PostSurvey
View(post)

#Create data sets for testing
happyunder <- post$happy[post$classification == 'Freshman' | post$classification == 'Sophomore']
happyupper <- post$happy[post$classification == 'Junior' | post$classification == 'Senior']

#Visualize Distributions
hist(happyunder, xlab = 'Underclassman Happiness', main = 'Percent of Time Happy')
hist(happyupper, xlab = 'Upperclassman Happiness', main = 'Percent of Time Happy')

diff <-post$happy-post$post_happy

#Visualize Distribution of Differences
hist(post$diff_happy, xlab= 'Difference in Happiness over the Semester', main = 'Happy-Post Happy')
mean(happyunder)
mean(happyupper)

#Test Null Hypothesis
t.test(post$happy,post$post_happy, paired=T)

hs <- post$hw_hours_HS
college <- post$hw_hours_college

hist(hs, xlab= 'Hours Spent', main = 'Hours Spent on Homework in HS')
hist(college, xlab = 'Hours Spent', main = 'Hours Spent on Homework in College')

t.test(college, hs, paired = T, alternative = 'greater')

diff <- college-hs
mean(diff)

greeksleep <- post$sleep_Sat[post$greek == 'yes']
nongreeksleep <- post$sleep_Sat[post$greek == 'no']

hist(greeksleep, xlab = 'Hours of Sleep', main= 'Greek Hours of Sleep')
hist(nongreeksleep, xlab = 'Hours of Sleep', main = 'Non-Bro Hours of Sleep')

mean(nongreeksleep)-mean(greeksleep)
mean(nongreeksleep)
mean(greeksleep)
t.test(nongreeksleep, greeksleep)

biology <- post[post$major == 'Biology',]
nursing <-post[post$major == 'Nursing',]

biodiff <- biology$hw_hours_college - biology$hw_hours_HS
nursediff <-nursing$hw_hours_college - nursing$hw_hours_HS

hist(biodiff)
hist(nursediff)

t.test(biodiff,nursediff)

n1 <- 36/32
n2 <- 25/26
se <- 1.44
6/se
qt(.95, 25)
pnorm()

cpl <- c(16.3, 4.8, 10.7, 14.0, 15.7, 9.9, 29.3, 20.4, 15.7, 7.6, 16.2, 14.7, 15.0, 8.4, 23.3, 17.7)
cpr <-c(11.5, 3.5, 12.8, 7.9, 15.2, 9.8, 24.0, 14.9, 12.6, 8.2, 8.4, 11.0, 12.5, 9.2, 17.5, 11.1)
cpdiff <- cpl-cpr
t.test(cpl, cpr, paired = T, alternative = 'greater')

qt(.950, 15)
mean(cpdiff)
hist(cpdiff)
sd(cpdiff)
sd(cpdiff)/sqrt(16)
