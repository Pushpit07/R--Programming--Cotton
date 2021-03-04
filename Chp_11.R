(now_ct <- Sys.time())
class(now_ct)
unclass(now_ct)

(now_lt <- as.POSIXlt(now_ct))
class(now_lt)
unclass(now_lt)
now_lt$sec
now_lt[["min"]]

(now_date <- as.Date(now_ct))
class(now_date)
unclass(now_date)


moon_landings_str <- c(
  "20:17:40 20/07/1969",
  "06:54:35 19/11/1969",
  "09:18:11 05/02/1971",
  "22:16:29 30/07/1971",
  "02:23:35 21/04/1972",
  "19:54:57 11/12/1972"
)
(moon_landings_lt <- strptime(
  moon_landings_str,
  "%H:%M:%S %d/%m/%Y",
  tz = "UTC"
))
# specifying dashes instead of slashes makes the parsing fail
strptime(
  moon_landings_str,
  "%H:%M:%S %d-%m-%Y",
  tz = "UTC"
)


strftime(now_ct, "It's %I:%M%p on %A %d %B, %Y.")


strftime(now_ct, tz = "America/Los_Angeles")
strftime(now_ct, tz = "Asia/Kolkata")
strftime(now_ct, tz = "EST") #Canadian Eastern Standard Time


strftime(now_ct, tz = "Asia/Tokyo")
strftime(now_lt, tz = "Asia/Tokyo") #no zone change


now_ct + 86400
now_date + 5 #Date arithmetic is in days

the_start_of_time <- #according to POSIX 
  as.Date("1970-01-01")
the_end_of_time <- #according to Mayan conspiracy theorists 
  as.Date("2012-12-21")
(all_time <- the_end_of_time - the_start_of_time)

class(all_time)
unclass(all_time)
difftime(the_end_of_time, the_start_of_time, units = "secs")
difftime(the_end_of_time, the_start_of_time, units = "weeks")

seq(the_start_of_time, the_end_of_time, by = "1 year")
seq(the_start_of_time, the_end_of_time, by = "500 days") #of Summer



install.packages("lubridate")
library(lubridate)

john_harrison_birth_date <- c( #He invented the marine chronometer 
  "1693-03 24",
  "1693/03\\24",
  "Tuesday+1693.03*24"
)
ymd(john_harrison_birth_date) #All the same


date_format_function <-
  stamp("A moon landing occurred on Monday 01 January 1900 at 18:00:00.")

date_format_function(moon_landings_lt)


(duration_one_to_ten_years <- dyears(1:10))
today() + duration_one_to_ten_years

(period_one_to_ten_years <- years(1:10))
today() + period_one_to_ten_years


a_year <- dyears(1)
as.period(a_year)


inter<- (ymd("2016-02-28") %--% ymd("2016-03-01"))
ymd("2016-02-29") %within% inter

with_tz(now_lt, tz = "America/Los_Angeles")
with_tz(now_lt, tz = "Asia/Kolkata")

head(olson_time_zones())

floor_date(today(), "year")
ceiling_date(today(), "year")
