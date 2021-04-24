# Q6. Write R script to:
#   a) Do two simulations of a binomial number with n = 100 and p = 0.5. Do you get the same
#      results each time? What is different? What is similar?
?rbinom
rbinom(20, 100, 0.5)
rbinom(20, 100, 0.5) # around 50

# Extra
rbinom(20, 100, 0.7) # around 70
rbinom(20, 100, 0.2) # around 20

#   b) Do a simulation of the normal distribution two times. Once with n=10, u=10, 
#      and sigma=10, the other with n=10, u=100, and sigma=100. How are they different?
#      How are they similar? Are both approximately normal?

?rnorm
# set.seed(10)
r1 = rnorm(10, 10, 10)
r2 = rnorm(10, 100, 100)
sort(r1)
sort(r2)
plot(density(r1))
plot(density(r2))

?shapiro.test
shapiro.test(r1)
shapiro.test(r2)
