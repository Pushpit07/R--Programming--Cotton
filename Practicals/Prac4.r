# Q4. The built-in data set mammals contain data on body weight versus brain weight. Write R commands to:
library(MASS)
str(mammals)

#   a) Find the Pearson and Spearman correlation coefficients. Are they similar?
cor(mammals$body, mammals$brain, method = "spearman")
cor(mammals$body, mammals$brain, method = "pearson")
#or
with(mammals, cor.test(body, brain, method = "pearson"))
with(mammals, cor.test(body, brain, method = "spearman"))

# Interpreting correlation coefficient
# Correlation coefficient is comprised between -1 and 1:
# -1 indicates a strong negative correlation : this means that every time x increases, y decreases
#  0 means that there is no association between the two variables (x and y) 
#  1 indicates a strong positive correlation : this means that y increases with x


#   b) Plot the data using the plot command .
with(mammals, plot(brain, body))

#   c) Plot the logarithm (log) of each variable and see if that makes a difference.
with(mammals, plot(log(brain), log(body)))