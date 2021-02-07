class(1)

typeof(NA)

.Machine

(gender <- factor(c("male", "female", "female", "male", "female")))
levels(gender)
nlevels(gender)
as.integer(gender)

gender_char <- sample(c("female", "male"), 10000, replace = TRUE)
gender_fac <- as.factor(gender_char)
object.size(gender_char)
object.size(gender_fac)

as.character(gender)


as.raw(1:17)
as.raw(c(pi, 1 + 1i, -1, 256))
(sushi <- charToRaw("Fish!"))
class(sushi)


is.character("red lorry, yellow lorry")
is.logical(FALSE)
is.list(list(a = 1, b = 2))
ls(pattern = "^is", baseenv())


y <- c(2, 12, 343, 34997) 
as(y, "data.frame")
as.data.frame(y)


ulams_spiral <- c(1, 8, 23, 46, 77)
for(i in ulams_spiral) i
for(i in ulams_spiral) print(i)


num <- runif(30)
summary(num)

fac <- factor(sample(letters[1:5], 30, replace = TRUE))
summary(fac)

bool <- sample(c(TRUE, FALSE, NA), 30, replace = TRUE)
head(bool)
summary(bool)

dfr <- data.frame(num, fac, bool)
head(dfr)
summary(dfr)

unclass(fac)
attributes(fac)


View(dfr)
new_dfr <- edit(dfr)
fix(dfr)

browseEnv()

hi <- "hi"
hi

b <- c("bye")
b

rm(hi, b)
