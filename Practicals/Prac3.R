# Q3. Read the file coweeta.CSV and write an R script to do the following:
getwd()
setwd('/Users/pushpitbhardwaj/Desktop/sem4/R/R_Cotton/Practicals')
df <- data.frame(read.csv('coweeta.csv'))
str(df)

# a) count the number of observations per species.
table(df$species) #or
library(dplyr)
cnt <- count(df, vars=species)
cnt

# b) take a subset of the data including only those species with at least 10 observations.
subset(cnt, n>=10)

# c) make a scatter plot of biomass versus height, with the symbol color varying by species,
#   and use filled squares for the symbols. Also add a title to the plot, in italics.
with(df, plot(biomass, height, pch=15, col='blue', 
              main='Relationship of biomass and height', font.main=3))
plot(0:25, pch=0:25)
# or
library(ggplot2)
ggplot(df, aes(biomass, height, colour=species)) + geom_point(pch=15) +
  labs(title = expression(italic('Relationship of Biomass & height'))) 

# d) log-transform biomass, and redraw the plot.
ggplot(df, aes(biomass, height, colour=species)) + geom_point(pch=15) +
  labs(title = expression(italic('Relationship of Biomass & height'))) + scale_x_log10()