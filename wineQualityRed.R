getwd()
setwd('~/Downloads/eda-course-materials')

wqr <- read.csv('wineQualityReds.csv')
table(wqr$quality)
summary(wqr)
str(wqr)
#levels(wineQualityReds$quality)

qplot(data = wqr, x = quality)
qplot(data = wqr, x = free.sulfur.dioxide)
qplot(data = wqr, x = total.sulfur.dioxide, xlim=c(0,200))
qplot(data = wqr, x = total.sulfur.dioxide, binwidth = 10) +
  scale_x_continuous(limits = c(0,200), breaks = seq(0,200,25))
ggplot(aes(x=quality, y= total.sulfur.dioxide), data = wqr) + 
  geom_boxplot(aes(group = cut_width(quality,1)), outlier.alpha = 0.2)
?qplot
#age.range.order <- ordered(reddit$age.range, levels = c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64","65 or Above"))
#qplot(data = reddit, x = age.range.order)

by(wqr$free.sulfur.dioxide, wqr$quality, summary)

install.packages('dplyr')
install.packages('alr3')
install.packages('car')
?dplyr
??dplyr
install.packages('dplyr')
install.packages('zoom')
y
