# Q5. In the library MASS is a dataset UScereal which contains information about 
# popular breakfast cereals. Attach the data set and use different kinds of plots 
# to investigate the following relationships:
library(MASS)
str(UScereal)
data("UScereal")
attach(UScereal)
getwd()
setwd("/Users/pushpitbhardwaj/Desktop/sem4/R/R_Cotton/Practicals")
writexl::write_xlsx(UScereal,"UScereal.xlsx")
UScereal[,c(1,9)]

#   a) relationship between manufacturer and shelf
table(mfr,shelf)

#   b) relationship between fat and vitamins
library(lattice)
xyplot(vitamins~fat, UScereal)
xyplot(vitamins~jitter(fat,100), UScereal)
stripchart(fat~vitamins, pch = 19, method = "jitter")
stripplot(vitamins~jitter(fat,100))
library(ggplot2)
ggplot(UScereal, aes(fat, vitamins)) + geom_point(position = "jitter")

#   c) relationship between fat and shelf
ggplot(UScereal,aes(fat, shelf)) + geom_point(position = "jitter")

#   d) relationship between carbohydrates and sugars
ggplot(UScereal,aes(carbo,sugars)) + geom_point()

#   e) relationship between fibre and manufacturer
ggplot(UScereal,aes(mfr,fibre)) + geom_point(position = "jitter")

#   f) relationship between sodium and sugars
ggplot(UScereal,aes(sodium,sugars)) + geom_point()