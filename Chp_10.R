library(lattice)
dotplot(
  variety ~ yield | site,
  data   = barley,
  groups = year
)


pkgs <- c("lattice", "utils", "rpart") 
for(pkg in pkgs)
{
  library(pkg, character.only = TRUE) 
}

if(!require(apackagethatmightnotbeinstalled)) {
  warning("The package 'apackagethatmightnotbeinstalled' is not available.") #perhaps try to download it
  #...
}

search()

View(installed.packages())
R.home("library")
.Library

path.expand("~") 
Sys.getenv("HOME")
.libPaths()
View(available.packages())

install.packages(
  c("xts", "zoo"),
  repos = "http://www.stats.bris.ac.uk/R/"
)

install.packages(
  c("xts", "zoo"),
  lib   = "some/other/folder/to/install/to",
  repos = "http://www.stats.bris.ac.uk/R/"
)


install.packages("devtools")
install_github("knitr", "yihui")