data() #Listing of the data sets in the package "datasets"
data("kidney")  #data set kidney will not be loaded
library(survival) #Load the package first
data("kidney") #Then Load the data set
data(package = .packages(TRUE)) #Listing of the data sets package wise
data("kidney", package = "survival") #if the relevant package is not loaded, give package name also
kidney #to read the data set
head(kidney) # First 6 rows
tail(kidney) # Last 6 rows
getwd()
setwd("/Users/pushpitbhardwaj/Desktop/sem4/R/R_Cotton/College")
read.csv(file = "Mall_Customers.csv")
customers <- data.frame(read.csv(file = "Mall_Customers.csv"))
str(customers)
names(customers) <- list("CustId", "Gender","Age","Income","Spending_Score")
str(customers)
head(customers)

# Reading text files
read.table("customers.txt", header = FALSE, nrows = 100, skip = 0, fill = TRUE) #nrows & skip works for csv also
#There are several convenience wrapper functions to read.table. read.csv sets the
#default separator to a comma, and assumes that the data has a header row. read.csv2
#is its European cousin, using a comma for decimal places and a semicolon as a separator.
#Likewise read.delim and read.delim2 import tab-delimited files with full stops or
#commas for decimal places, respectively.

write.table(customers,"cust_data.txt")
write.table(customers,"cust_data.txt",sep = "\t")
write.table(customers,"cust_data.txt",sep = ",")
write.table(customers,"cust_data.csv",sep = ",",row.names = FALSE)
write.csv(customers,"cust_data1.csv")
write.csv2(customers,"cust_data1.csv")

text <- readLines("textdata.txt")
text[2:7]
rev(text) 
rev.default(text)
writeLines(text,"txtdt.txt")

#xml
library(XML)
install.packages("XML")
install.packages("learningr")
rxml <- xmlParse(system.file("extdata", "options.xml", package = "learningr"),useInternalNodes = FALSE) #xmlParse is used to import xml file
#str and head don't work with XML

#xlsx
install.packages("readxl")
library(readxl)
read_xlsx("cust.xlsx", skip = 2, n_max = 10)

covid_statewise <- "https://api.covid19india.org/csv/latest/states.csv"
covid_statewise <- read.csv(covid_statewise)
covid_statewise
#More advanced access to web pages can be achieved through the RCurl package, which
#provides access to the libcurl network client interface library. This is particularly useful
#if your data is contained inside an HTML or XML page, rather than a standard data
#format (like CSV) that just happens to be on the Web.

