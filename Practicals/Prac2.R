# Q2. Using the Algae data set from package DMwR to complete the 
# following tasks.
install.packages('DMwR2')
library(DMwR2)
str(algae)

# a) create a graph that you find adequate to show the distribution 
#     of the values of algae a6.
algae$a6
sort(algae$a6)
median(algae$a6)
hist(algae$a6)
boxplot(algae$a6)
table(cut(algae$a6, seq.int(0, 80, 10), include.lowest = TRUE))

library(lattice)
histogram(algae$a6)
library(ggplot2)
ggplot(algae, aes(a6)) + geom_histogram(binwidth = 10)

# b) show the distribution of the values of size.
table(algae$size)
barchart(algae$size)
barplot(table(algae$size))

# c) check visually if oPO4 follows a normal distribution.
sort(algae$oPO4)
median(sort(algae$oPO4))
hist(algae$oPO4, probability = TRUE)
lines(density(algae$oPO4, na.rm=TRUE))

# d) produce a graph that allows you to understand how the values of 
#   NO3 are distributed across the sizes of river.
algae$NO3
sort(algae$NO3)
layout(matrix(1:4, ncol=2, byrow = TRUE))
hist(algae$NO3)
algae[c('size', 'NO3')]
subset(algae, size=='small')
subset(algae, size=='medium')
subset(algae, size=='large')

layout(matrix(1:4, ncol=2, byrow = TRUE))
for (siz in unique(algae$size)) {
  s <- subset(algae, size==siz)
  hist(s$NO3, main=siz, xlab='NO3')
}

# e) using a graph check if the distribution of algae a1 varies with 
#   the speed of the river.
algae$speed
layout(matrix(1:4, ncol=2, byrow = TRUE))
for (spd in unique(algae$speed)) {
  s <- subset(algae, speed==spd)
  hist(s$a1, main=spd, xlab='NO3')
}
ggplot(algae, aes(x = a1, fill = speed)) + geom_density(alpha = 0.3)

# f) visualize the relationship between the frequencies of algae a1 
#   and a6. Give the appropriate graph title, x-axis and y-axis title.
ggplot(algae, aes(x = a1, y = a6))+ geom_point()