sample(5)
sample(10)
sample(10,0,100)

# Q1. Write an R script to do the following:
# a) simulate a sample of 100 random data points from a normal 
#   distribution with mean 100 and standard deviation 5 and store 
#   the result in a vector.
a = rnorm(100, mean=100, sd=5)
as.vector(a)
summary(a)
quantile(a)
fivenum(a)

v <- c('a', 'b', 'c', 'a', 'b')
table(v)
table(cut(a, seq.int(86,116,5)))

# b) visualize the vector created above using different plots.
boxplot(a)
hist(a)
barplot(a)

# c) test the hypothesis that the mean equals 100.
t.test(a, mu=100)

v <- c(1,2,3)
t.test(v, mu=2)

# d) use wilcox test to test the hypothesis that mean equals 90.
wilcox.test(a, mu=90)
prettyNum(2.2e-16, scientific=FALSE)