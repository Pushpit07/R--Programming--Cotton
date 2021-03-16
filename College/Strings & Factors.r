#Constructing String
strg <- c("Hello this is a sample string!!",'Single quotes are better for including " inside the string')
strg

#Combining strings
strg2 <- paste("Hello", "World")
strg2

strg2 <- paste("SSCBS", c("BSC","BMS","BFIA"))
strg2

strg2 <- paste0("SSCBS", c("BSC","BMS","BFIA"))
strg2
cat("SSCBS", c("BSC","BMS","BFIA")) # It can take filenames as arguments

#Converting vectors into string
vec <- 1:10
toString(vec)
toString(vec, width = 20)  #Printing first 20 characters

noquote(strg)  #Printing without quote

# Formatting of numbers
exp(1:5)
formatC(exp(1:5))
formatC(exp(1:5), digits = 3)
formatC(exp(1:5), digits = 3, width = 8) #Preceding spaces
formatC(exp(1:5), digits = 3, format = "e") #Scientific formatting
formatC(exp(1:5), digits = 3, flag = "+") 

sprintf("%s %d = %f", "Euler's constant to the power", 1:5,exp(1:5))
sprintf("To three decimal places, e ^ %d = %.3f",1:5,exp(1:5))
sprintf("To three decimal places, e ^ %d = %.e",1:5,exp(1:5))
sprintf("To three decimal places, e ^ %d = %.ef",1:5,exp(1:5))

format(exp(1:5), digits = 3, trim = TRUE)
format(exp(1:5), digits = 3, trim = TRUE, scientific = TRUE)

prettyNum(
  c(1e10, 1e-20),
  big.mark = ",",
  small.mark = " ",
  preserve.width = "individual",
  scientific = FALSE
)

#Special characters
cat("foo\tbar")
#foo	bar
cat("foo\nbar")
#foo
#bar
cat("\a")
alarm()

#Changing case
toupper("hello")
tolower("HELLO")

#extracting substring 
woodchuck <- c(
  "How much wood would a woodchuck chuck",
  "If a woodchuck could chuck wood?",
  "He would chuck, he would, as much as he could",
  "And chuck as much wood as a woodchuck would",
  "If a woodchuck could chuck wood."
)
substring(woodchuck,1,10)
substring(woodchuck,1:5,10)

strsplit(woodchuck, " ")

getwd()
setwd()
#Absolute Path or Relative Path
file.path("C","Onkar","R")
file_name <- "C:/Program Files/R/R-devel/bin/x64/RGui.exe"
basename(file_name)
dirname(file_name)

#Factors
(heights <- data.frame(
  height_cm = c(153, 181, 150, 172, 165, 149, 174, 169, 198, 163),
  gender = c(
    "female", "male", "female", "male", "male",
    "female", "female", "male", "male", "female"
  )
))
heights$gender
class(heights$gender)
heights$gender <- factor(heights$gender)
heights$gender[1] <- "Female"
heights$gender
levels(heights$gender)
nlevels(heights$gender)
gender_char <- factor(heights$gender)
factor(gender_char, levels = c("male", "female"))

levels(gender_char) <- c("male", "female") #interchanging male & female, not factors
getting_to_work <- data.frame(
  mode = c("bike", "car", "bus", "car", "walk","bike", "car", "bike", "car", "car"),
  time_mins = c(25, 13, NA, 22, 65, 28, 15, 24, NA, 14))
(getting_to_work <- subset(getting_to_work, !is.na(time_mins)))
getting_to_work$mode <- factor(getting_to_work$mode)
unique(getting_to_work$mode)
droplevels(getting_to_work$mode)  #dropping unused levels

#generating factor levels

lvl1 <- gl(4,5)
lvl2 <- factor(letters[1:20])
interaction(lvl1,lvl2) #must be of same length
