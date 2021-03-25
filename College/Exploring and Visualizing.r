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
xyplot(Turnout ~ Income, obama_vs_mccain, col = "violet", pch = 20)
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
with(crab_tag$daylog,plot(Date, -Max.Depth, type = "l"))