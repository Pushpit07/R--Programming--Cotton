library(usethis)
library(devtools)
library(roxygen2)
getwd()

vec <- c(1:10)
vec
mean(vec)

myMean <- function(vec) {
  len <- length(vec)
  sm <- sum(vec)
  
  sm/len
}

myMean(vec)

package.skeleton("pkg9", "myMean")
roxygenize("pkg9")
rm(list = c("myMean"))
roxygenize("pkg9")

check("pkg9")

build("pkg9")
release("pkg9")