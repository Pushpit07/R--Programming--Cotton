library(learningr)
str(obama_vs_mccain)
obama <- obama_vs_mccain$Obama
obama
mean(obama)
median(obama)
sort(obama)

x <- c(1,91,92,91,92)
is.vector(x)
mean(x)
median(x)
sort(x)

x <- c(1,91,92,91,92,193)
mean(x)
median(x)
sort(x)

seq.int(0,100,10)
length(obama)
cut(obama,seq.int(0,100,10))

x
cut(x,seq.int(0,100,10))
table(cut(x,seq.int(0,100,10)))
table(cut(obama,seq.int(0,100,10)))

min(obama)
max(obama)
sd(obama)
var(obama)
obama_vs_mccain
with(obama_vs_mccain,pmin(Obama,McCain))
with(obama_vs_mccain,pmax(Obama,McCain))
range(obama)
#cummin and cummax provide the smallest and largest values so far in a vector.
cummin(obama)
cummax(obama)
cumsum(obama)
cumprod(obama)

#quantiles
median(obama)
sort(obama)
quantile(obama) #to understand quantile; https://www.youtube.com/watch?v=IFKQLDmRK0Y
quantile(obama,c(0.9,0.98))
IQR(obama)  #75% - 25%, Inter Quartile Range
fivenum(obama) #Same as quantile, but more faster
summary(obama)
summary(obama_vs_mccain)
with(obama_vs_mccain,cor(Obama,McCain)) #Correlation between Obama and McCain variable
with(obama_vs_mccain,cancor(Obama,McCain))  #Canonical Correlation between Obama and McCain variable

#Visualization
#Scatterplot
with(obama_vs_mccain, plot(Income,Turnout))
length(obama_vs_mccain$Turnout)
turnout_cleaned <- obama_vs_mccain$Turnout[!is.na(obama_vs_mccain$Turnout)]

#all rows with no NA in turnout
obama_df_cleaned <- obama_vs_mccain[!is.na(obama_vs_mccain$Turnout),]
with(obama_df_cleaned,plot(Income,Turnout))
with(obama_vs_mccain, plot(Income,Turnout, col = "violet"))
with(obama_vs_mccain, plot(Income,Turnout, col = "violet", pch = 19 ))
plot(0:25, pch = 0:25, bg = "green")
with(obama_vs_mccain,plot(Income,Turnout, 
  main = "Income-Turnout Correlation", 
  xlab =  "Income Label", ylab = "Turnout Label"))


library(lattice)
xyplot(Turnout ~ Income, obama_vs_mccain)
# maint, xlab and ylab also works in xyplot
xyplot(Turnout , Income, obama_vs_mccain, col = "violet", pch = 20)
xyplot(
  Turnout ~ Income,
  obama_vs_mccain,
  scales = list(log = TRUE) #both axes log scaled (Fig. 14-8)
)
# Log Scale: https://www.khanacademy.org/math/algebra-home/alg-exp-and-log/alg-logarithmic-scale/v/logarithmic-scale

xyplot(
  Turnout ~ Income,
  obama_vs_mccain,
  scales = list(y = list(log = TRUE)) 
)

#Using ggplot2
install.packages("ggplot2")
library(ggplot2)
ggplot(obama_vs_mccain, aes(Income, Turnout)) + geom_point()


#line plot
with(obama_df_cleaned,plot(Income,Turnout, type = "l"))
str(crab_tag)
with(crab_tag$daylog,plot(Date, -Max.Depth, type = "l", ylim = c(-max(Max.Depth),0)))
with(crab_tag$daylog,lines(Date,-Min.Depth, col = "blue"))
xyplot(-Min.Depth + -Max.Depth ~ Date, crab_tag$daylog, type = "l")

ggplot(crab_tag$daylog,aes(Date,-Max.Depth)) + geom_line()
ggplot(crab_tag$daylog,aes(Date)) + 
  geom_line(aes(y = -Max.Depth), col = "red") + 
  geom_line(aes(y = -Min.Depth), col = "blue")

library(reshape2)
crab_data <- melt(crab_tag$daylog, id.vars = "Date", measure.vars = c("Min.Depth","Max.Depth"))
ggplot(crab_data, aes(Date, -value, group = variable)) + geom_line()

ggplot(crab_tag$daylog, aes(Date, ymin = -Min.Depth, ymax = -Max.Depth)) +
  geom_ribbon(color = "black", fill = "white")
#Histogram
hist(obama)
hist(obama_vs_mccain$Obama)
hist(obama_vs_mccain$Obama, main = "Histogram Obama", xlab = "Obama")
with(obama_vs_mccain,hist(Obama))
with(obama_vs_mccain,hist(Obama,5,main = "Hist"))
with(obama_vs_mccain,hist(Obama,seq.int(0,100,5),main = "Hist"))
# Sturges, FD and Scott are the names of the method to calculate no. of bins
with(obama_vs_mccain,hist(Obama,"Scott",main = "Hist"))  
with(obama_vs_mccain,hist(Obama,nclass.Sturges,main = "Hist"))  

obama
hist(obama, freq = TRUE) #freq tells what to show on y-axis, count or probabilty density
table(cut(obama,seq.int(0,100,10)))

library(lattice)
histogram(~Obama,obama_vs_mccain)
histogram(~Obama,obama_vs_mccain,col = "green")
histogram(~Obama,obama_vs_mccain,col = "green", main = "obama")
histogram(~Obama,obama_vs_mccain,col = "green",breaks = 4)
histogram(~Obama,obama_vs_mccain,col = "green",type = "percentage")

library(learningr)
library(ggplot2)
ggplot(obama_vs_mccain,aes(Obama))+geom_histogram(binwidth = 5)
ggplot(obama_vs_mccain,aes(Obama, ..density..))+geom_histogram(binwidth = 5)

boxplot(obama_vs_mccain$Obama)
quantile(obama)
table(cut(obama,seq.int(0,100,10)))

bwplot(~obama)
str(obama_vs_mccain)

#More on Graphs/Plots
# 3 Packages: Base Graphics, lattice, ggplot2
# scatter plots, line plots, histograms, box plots, bar graphs etc. 
#can be made using all 3 packages

?par
# par, stands for parameter, function is used to set the parameter values of plots
#Some parameters are: 

#mfcol, mfrow: A vector of the form c(nr, nc). Subsequent figures will be 
#drawn in an nr-by-nc array on the device by columns (mfcol), 
#or rows (mfrow), respectively.

#mar: A numerical vector of the form c(bottom, left, top, right) which 
#gives the number of lines of margin to be specified on the four sides 
#of the plot. The default is c(5, 4, 4, 2) + 0.1.

#mgp: The margin line (in mex units) for the axis title, axis labels and 
#axis line. Note that mgp[1] affects title whereas mgp[2:3] affect axis. 
#The default is c(3, 1, 0).

#oma: A vector of the form c(bottom, left, top, right) giving the size 
#of the outer margins in lines of text.

maxtemp <- c("sun" = 24, "mon" = 23, "tue" = 24, "wed" = 22, 
             "thu" = 21, "fri" = 20, "sat" = 19)
maxtemp
par(mfrow = c(1,2))
barplot(maxtemp, main = "Max. Temp.")
pie(maxtemp, radius = 1, main = "Max. Temp.")


with(obama_vs_mccain, plot(Income, Turnout))
# Close the plots window to reset plots parameters
with(obama_vs_mccain, plot(Income, Turnout))
# Regionwise sublots of Income & Turnout
par(mar = c(3,3,0.5,0.5), oma = rep.int(0,4), mgp = c(2,1,0))
regions <- levels(obama_vs_mccain$Region)
#regions
plot_nums <- seq_along(regions)
#plot_nums
layout(matrix(plot_nums, ncol = 5, byrow = TRUE))
for (region in regions) {
  regional_data <- subset(obama_vs_mccain, Region == region)
  with(regional_data, plot(Income, Turnout))
}


reorder(obama_vs_mccain$Region,obama_vs_mccain$Obama,median)

