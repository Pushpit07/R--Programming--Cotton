an_environment <- new.env()
an_environment[["pythag"]] <- c(12, 15, 20, 21)
an_environment$root <- polyroot(c(6, -5, 1))

assign(
  "moonday",
  weekdays(as.Date("1969/07/20")),
  an_environment
)


an_environment[["pythag"]]
an_environment$root


ls(envir = an_environment)
ls.str(envir = an_environment)
exists("pythag", an_environment)

(a_list <- as.list(an_environment))
as.environment(a_list)
list2env(a_list)

nested_environment <- new.env(parent = an_environment)
exists("pythag", nested_environment)
exists("pythag", nested_environment, inherits = FALSE)

non_stormers <<- c(3, 7, 8, 13, 17, 18, 21)
get("non_stormers", envir = globalenv())
head(ls(envir = baseenv()), 20)


rt

hypotenuse <- function(x, y) {
  sqrt(x^2 + y^2)
}
hypotenuse(3,4)
hypotenuse(y = 24, x = 7)

hypotenuse <- function(x = 5, y = 12) {
  sqrt(x ^ 2 + y ^ 2)
}
hypotenuse()

formals(hypotenuse)
args(hypotenuse)
formalArgs(hypotenuse)

hypotenuse


normalize <- function(x, m = mean(x), s = sd(x)) {
  (x - m) / s 
}
normalized <- normalize(c(1, 3, 6, 10, 15))
mean(normalized)
sd(normalized)

normalize(c(1, 3, 6, 10, 15))
normalize(c(1, 3, 6, 10, NA))


normalize <- function(x, m = mean(x, na.rm = na.rm), s = sd(x, na.rm = na.rm), na.rm = FALSE)
{
  (x - m) / s
}
normalize(c(1, 3, 6, 10, NA))
normalize(c(1, 3, 6, 10, NA), na.rm = TRUE)


do.call(hypotenuse, list(x = 3, y = 4)) #same as hypotenuse(3, 4)

dfr1 <- data.frame(x = 1:5, y = rt(5, 1))
dfr2 <- data.frame(x = 6:10, y = rf(5, 1, 1))
dfr3 <- data.frame(x = 11:15, y = rbeta(5, 1, 1))
do.call(rbind, list(dfr1, dfr2, dfr3)) #same as rbind(dfr1, dfr2, dfr3)


do.call(function(x, y) x + y, list(1:5, 5:1))


(emp_cum_dist_fn <- ecdf(rnorm(50)))
is.function(emp_cum_dist_fn)
plot(emp_cum_dist_fn)



h <- function(x) {
  x*y 
}
h(9)
y <- 16
h(9)


h2 <- function(x) {
  if(runif(1) > 0.5) y <- 12
  x*y 
}
replicate(10, h2(9))
