install.packages("devtools")
library(usethis)
install.packages("glue")
library(devtools)
library(roxygen2)

hypotenuse <- function(x, y)
{
  sqrt(x^2 + y^2)
}

pythagorean_triplets <- data.frame()
{
  x = c(3, 5, 8, 7, 9, 11, 12, 13, 15, 16, 17, 19),
  y = c(4, 12, 15, 24, 40, 60, 35, 84, 112, 63, 144, 180),
  z = c(5, 13, 17, 25, 41, 61, 37, 85, 113, 65, 145, 181)
}

getwd()
setwd("/Users/pushpitbhardwaj/Desktop/sem4/R/R_Cotton")

package.skeleton("pythagoras", c("hypotenuse", "pythagorean_triplets"))

hypotenuse(34, 86)
# insert Roxygen skeleton in all functions, i.e., hypotenuse here, in the file inside R folder