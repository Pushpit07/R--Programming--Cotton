c(
  "You should use double quotes most of the time",
  'Single quotes are better for including " inside the string'
)

paste(c("red", "yellow"), "lorry")
paste(c("red", "yellow"), "lorry", sep = "-")
paste(c("red", "yellow"), "lorry", collapse = ", ")
paste0(c("red", "yellow"), "lorry")


x <- (1:15) ^ 2
x
toString(x)
toString(x, width = 40)


cat(c("red", "yellow"), "lorry")


x <- c(
  "I", "saw", "a", "saw", "that", "could", "out",
  "saw", "any", "other", "saw", "I", "ever", "saw"
)
y <- noquote(x)
x
y


pow <- 1:3
pow
(powers_of_e <- exp(pow))
formatC(powers_of_e)
formatC(powers_of_e, digits = 3)
formatC(powers_of_e, digits = 3, width = 10)
formatC(powers_of_e, digits = 3, format = "e") #scientific formatting
formatC(powers_of_e, digits = 3, flag = "+") #precede +ve values with +

sprintf("%s %d = %f", "Euler's constant to the power", pow, powers_of_e)
sprintf("To three decimal places, e ^ %d = %.3f", pow, powers_of_e)

format(powers_of_e)
format(powers_of_e, digits = 3) #at least 3 sig figs
format(powers_of_e, digits = 3, trim = TRUE) #remove leading zeros

prettyNum(
  c(1e10, 1e-20),
  big.mark = ",",
  small.mark = " ", 
  preserve.width = "individual", 
  scientific = FALSE
)
