seq.int(3,12)
seq.int(3,15,3)

seq_len(25)

n <- 0
1:n
seq_len(n)


length(c(TRUE, FALSE, NA))

sn <- c("Sheena", "leads", "Sheila", "needs")
nchar(sn)

x <- 1:4
names(x) <- c("apple", "bananas", "kiwi fruit", "")
x

x <- (1:5) ^ 2
x
x[c(1, 3, 5)]
x[c(-2, -4)]


rep(1:5, 3)
rep(1:5, each = 3)
rep(1:5, times=1:5)
rep(1:5, length.out = 7)
rep_len(1:5, 13)


(three_d_array <- array(
  1:24,
  dim = c(4, 3, 2),
  dimnames = list(
    c("one", "two", "three", "four"),
    c("ein", "zwei", "drei"),
    c("un", "deux")
  ) ))

class(three_d_array)


(a_matrix <- matrix(
  1:12,
  nrow = 4, #ncol = 3 works the same 
  dimnames = list(
  c("one", "two", "three", "four"),
  c("ein", "zwei", "drei")
)
))
class(a_matrix)

(two_d_array <- array(
  1:12,
  dim = c(4, 3),
  dimnames = list(
    c("one", "two", "three", "four"),
    c("ein", "zwei", "drei")
  )
))
identical(two_d_array, a_matrix)
class(two_d_array)
