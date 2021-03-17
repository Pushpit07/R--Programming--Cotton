#Cleaning
x <- c("Y", "N", "Do", "Y", "N", "A", "N")
y <- rep.int(NA, length(x))
y[x=='Y'] <- TRUE
y[x=='N'] <- FALSE

# do this for the column druguse of the dataset alpe_d_huez

library(stringr)
multiple_kingdom <- str_detect(english_monarchs$domain,fixed(","))
english_monarchs[multiple_kingdom,c("name","domain")]
multiple_rulers <- str_detect(english_monarchs$name,",|and")
english_monarchs$name[multiple_rulers & !is.na(multiple_rulers)]
multiple_rulers

df <- english_monarchs

str_count(df$domain,"Eng")
sum(str_count(df$domain,"Eng"))
#str_replace() replaces the first matched pattern and returns a character vector. str_replace_all() replaces all matches

gender <- c(
  "MALE", "Male", "male", "M", "FEMALE",
  "Female", "female", "f", NA
)
clean_gender <- str_replace(
  gender,
  ignore.case("^m(ale)?$"),
  "Male"
)
(clean_gender <- str_replace(
  clean_gender,
  ignore.case("^f(emale)?$"),
  "Female"
))

#Adding Column
df$length.of.reign.years <- df$end.of.reign - df$start.of.reign
df
df$length.of.reign <- with(df, df$end.of.reign - df$start.of.reign)
# within return whole dataframe, therefore useful if more than one column is added

df <- within(df, df$end.of.reign - df$start.of.reign)

# dealing with missing values
data("deer_endocranial_volume", package = "learningr")
has_all_measurements <- complete.cases(deer_endocranial_volume)
deer_endocranial_volume[has_all_measurements, ]
#or
na.omit(deer_endocranial_volume)
na.fail(deer_endocranial_volume) #Throw error, if missing values
na.fail(deer_endocranial_volume[has_all_measurements, ])


#When there are multiple measurements of the same subject, across time or using different tools, the data is often described as being in 
#"wide" format if there is one observation row per subject with each measurement present as a different variable and "long" format 
#if there is one observation row per measurement (thus, multiple rows per subject). Different functions require different formats, 
#and so the need to reshape a dataset may arise.
#Wide to Long
deer_wide <- deer_endocranial_volume[,1:5]
deer_wide

library(reshape2)
deer_long <- melt(deer_wide, id.vars = "SkullID") #Everything else except SkullID is measurement variable
deer_long
#or, if you explicitly define measurement variables... good to use if we have more than one ID variable
melt(deer_wide, measure.vars = c("VolCT", "VolBead", "VolLWH", "VolFinarelli")) 
