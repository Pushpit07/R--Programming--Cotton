data()
data(package = .packages(TRUE))

data("kidney", package = "survival")
head(kidney)


install.packages("learningr")
library(learningr)
deer_file <- system.file(
  "extdata",
  "RedDeerEndocranialVolume.dlm",
  package = "learningr"
)
deer_data <- read.table(deer_file, header = TRUE, fill = TRUE) 
str(deer_data, vec.len = 1) #vec.len alters the amount of output
head(deer_data)


crab_file <- system.file(
  "extdata",
  "crabtag.csv",
  package = "learningr"
)
(crab_id_block <- read.csv(
  crab_file, header = FALSE, skip = 3,
  nrow = 2
))
(crab_tag_notebook <- read.csv( 
  crab_file,
  header = FALSE,
  skip = 8,
  nrow = 5 
))
(crab_lifetime_notebook <- read.csv( crab_file,
  header = FALSE,
  skip = 15,
  nrow = 3
))
write.csv(
  crab_lifetime_notebook, 
  "Data/Cleaned/crab lifetime data.csv", 
  row.names = FALSE,
  fileEncoding = "utf8"
)



text_file <- system.file(
  "extdata",
  "Shakespeare's The Tempest, from Project Gutenberg pg2235.txt",
  package = "learningr"
)
the_tempest <- readLines(text_file)
the_tempest[1926:1927]
writeLines(
  rev(text_file), #rev reverses vectors 
  "Shakespeare's The Tempest, backwards.txt"
)



install.packages("XML")
library(XML)
xml_file <- system.file("extdata", "options.xml", package = "learningr")
r_options <- xmlParse(xml_file)
xmlParse(xml_file, useInternalNodes = FALSE) 
xmlTreeParse(xml_file) #the same

xpathSApply(r_options, "//variable[contains(@name, 'warn')]")

install.packages("Runiversal")
library(Runiversal)
ops <- as.list(options())
cat(makexml(ops), file = "options.xml")


install.packages("RJSONIO")
install.packages("rjson")
library(RJSONIO)
library(rjson)
jamaican_city_file <- system.file(
  "extdata",
  "Jamaican Cities.json",
  package = "learningr"
)
(jamaican_cities_RJSONIO <- RJSONIO::fromJSON(jamaican_city_file))
(jamaican_cities_rjson <- rjson::fromJSON(file = jamaican_city_file))


special_numbers <- c(NaN, NA, Inf, -Inf) 
RJSONIO::toJSON(special_numbers)
rjson::toJSON(special_numbers)


library(yaml)
yaml.load_file(jamaican_city_file)



install.packages("xlsx")
library(xlsx)
bike_file <- system.file(
  "extdata",
  "Alpe d'Huez.xlsx",
  package = "learningr"
)
bike_data <- read.xlsx2(
  bike_file,
  sheetIndex = 1,
  startRow = 2,
  endRow = 38,
  colIndex = 2:8,
  colClasses = c(
    "character", "numeric", "character", "integer",
    "character", "character", "character"
  )
)
head(bike_data)




install.packages("WDI")
library(WDI)
#list all available datasets 
wdi_datasets <- WDIsearch() 
head(wdi_datasets)

#retrieve one of them
wdi_trade_in_services <- WDI(
  indicator = "BG.GSR.NFSV.GD.ZS"
)
str(wdi_trade_in_services)


install.packages("quantmod")
library(quantmod)
#If you are using a version before 0.5.0 then set this option #or pass auto.assign = FALSE to getSymbols. 
options(getSymbols.auto.assign = FALSE)
microsoft <- getSymbols("MSFT")
head(microsoft)



salary_url <- "http://www.justinmrao.com/salary_data.csv"
salary_data <- read.csv(salary_url)
str(salary_data)

salary_url <- "http://www.justinmrao.com/salary_data.csv"
local_copy <- "my local copy.csv"
download.file(salary_url, local_copy)
salary_data <- read.csv(local_copy)
str(salary_data)


install.packages("RCurl")
library(RCurl)
time_url <- "http://tycho.usno.navy.mil/cgi-bin/timer.pl"
time_page <- getURL(time_url)
cat(time_page)
