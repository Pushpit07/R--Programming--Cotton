(a_list <- list(
  c(1, 1, 2, 5, 14, 42),
  month.abb,
  matrix(c(3, -8, 1, -3), nrow = 2),
  asin
))

names(a_list) <- c("catalan", "months", "involutary", "arcsin")
a_list

is.atomic(list())
is.recursive(list())

length(a_list)
dim(a_list)


l <- list(
  first  = 1,
  second = 2,
  third  = list(
    alpha = 3.1,
    beta = 3.2 )
)


l[1:3]
l$first
l$f

(prime_factors <- list( two =2,
                        three = 3,
                        four = c(2, 2),
                        five  = 5,
                        six   = c(2, 3),
                        seven = 7,
                        eight = c(2, 2, 2),
                        nine  = c(3, 3),
                        ten   = c(2, 5)
))

unlist(prime_factors)


c(list(a = 1, b = 2), list(3))


length(NULL)
length(NA)

(a_data_frame <- data.frame(x=letters[1:5], y=rnorm(5), z=runif(5) > 0.5))
class(a_data_frame)

y <- rnorm(5)
names(y) <- month.name[1:5]
data.frame(
  x = letters[1:5],
  y = y,
  z = runif(5) > 0.5
)


another_data_frame <- data.frame( 
  z = rlnorm(5), #lognormally distributed numbers
  y = sample(5), #the numbers 1 to 5, in some order
  x = letters[3:7]
)
rbind(a_data_frame, another_data_frame)

cbind(a_data_frame, another_data_frame``)


colSums(a_data_frame[, 2:3])
colMeans(a_data_frame[, 2:3])
