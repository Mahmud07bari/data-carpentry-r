library(tidyverse)
load(tidyverse)
library(tidyverse)
install.packages("tidyverse")
library(tidyverse)
interviews <- read_csv("data/SAFI_clean.csv", NULL)
interviews <- read_csv("data/SAFI_clean.csv", no="NULL")
interviews <- read_csv("data/SAFI_clean.csv", na= "NULL")
interviews
as.data.frame(interviews)
view(interviews)
View(interviews) 


#inspect data
dim(interviews)
row(interviews)
col(interviews)
nrow(interviews)
ncol(interviews)

head(as.data.frame(interviews))
tail(interviews)

names(interviews)
str(interviews)
summary(interviews)

interviews[1, 1]
interviews[1, 6]
interviews[1:5, 6]
interviews[1, 1:4]
interviews[1, 1:14]
interviews[1, 1:ncol(4)]
interviews[1, ]
interviews[, 6]

interviews["respondent_wall_type"]
interviews[1:6]
interviews[, -1]
as.data.frame(interviews_100)

interviews[100, ]
nrow(100)


interviews[100,]
as.data.frame(interviews_100)












interviews[100,]
nrow(100)
#Indexing data frames
Create a data frame (interviews_100) containing only the data in row 100 of the interviews dataset.
Notice how nrow() gave you the number of rows in a data frame?
  Use that number to pull out just that last row in the data frame.
Compare that with what you see as the last row using tail() to make sure it’s meeting expectations.
Pull out that last row using nrow() instead of the row number.
Create a new data frame (interviews_last) from that last row.
Use nrow() to extract the row that is in the middle of the data frame. Store the content of this row in an object named interviews_middle.
Combine nrow() with the - notation above to reproduce the behaviour of head(interviews), keeping just the first through 6th

rows of the interviews dataset.

interviews_100 <- interviews[100,]
interviews[nrow(interview))]
interviews[nrow(interviews), ]
tail(interviews)
interview_last <- interviews[nrow(interviews),]
n_row <-nrow(interviews)
interviews[n_row/2]
interviews[(n_row/2),]
interviews[round(n_row/2),]
interviews[ceiling(n_row/2),]
interviews [-(7:nrow(interviews)),]















respondent_floor_type <- factor(c("earth", "cement", "cement", "earth"))
respondent_floor_type
levels(respondent_floor_type)
nlevels(respondent_floor_type)
respondent_floor_type <- factor(respondent_floor_type, levels = c("earth", "cement"))
levels(respondent_floor_type)
levels(respondent_floor_type)[2]
levels(respondent_floor_type)[2] <- "brick"
respondent_floor_type
as.character(respondent_floor_type)

year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
year_fct
as.numeric(year_fct)
as.numeric(levels(year_fct))[year_fct]
affect_conflicts <- interviews$affect_conflicts
affect_conflicts <- interviews[["affect_conflicts"]]
affect_conflicts
affect_conflicts <- factor(affect_conflicts)
affect_conflicts
affect_conflicts <- factor(affect_conflicts)
affect_conflicts

plot(affect_conflicts)
plot(affect_conflicts)
plot(affect_conflicts)
affect_conflicts <- interviews$affect_conflicts
affect_conflicts
affect_conflicts[is.na(affect_conflicts)] <- "undetermined"
affect_conflicts
affect_conflicts <- factor(affect_conflicts)
affect_conflicts
plot(affect_conflicts)


affect_conflicts <- interviews$affect_conflicts
affect_conflicts[is.more_once(affect_conflicts)] <- "more than once"

affect_conflicts <- factor(c("frequently", "more_once", "never", "once", "undetermined"))
affect_conflicts
= Tidyverse-read_csv
interviews <- read_csv("data/SAFI_clean.csv", na = "NULL")
=base R read.csv
interviews <- read.csv("data/SAFI_clean.csv", na = "NULL", stringsAsFactors = FALSE)
=base R read.csv-using options
options(stringsAsFactors = FALSE)
interviews <- read.csv("data/SAFI_clean.csv, na = "NULL")

affect_conflicts <- interviews$affect_conflicts
affect_conflicts
affect_conflicts[is.na(affect_conflicts)] <- "undetermined"
affect_conflicts

affect_conflicts
affect_conflicts <- factor(affect_conflicts)
affect_conflicts
plot(affect_conflicts)
affect_conflicts <- factor(c("frequently", "more_once", "never", "once", "undetermined"))
affect_conflicts
levels(affect_conflicts)
levels(affect_conflicts)[2] <- "more than once"
levels(affect_conflicts)
plot(affect_conflicts)_once"

levels(affect_conflicts)[levels(affect_conflicts) = "more_once"] <- "more than once"
affect_conflicts <- factor(affect_conflicts, levels = c("never", "once", "more than once", "frequently", "undetermined"))
affect_conflicts
plot(affect_conflicts)

str(interviews)
library(lubridate)

dates <- interviews$interview_date
dates
head(dates)
dates <- ymd_hms(dates)
dates
str(dates)
interviews$day <- day(dates)
interviews$day 
interviews$month <- month(dates)
interviews$month
interviews$year <- year(dates)
interviews$year
str(interviews)
