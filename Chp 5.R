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

options
