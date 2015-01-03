rm(list=ls())
data_file_path <- "./data/"

data_file_name <- "Kona_take_off.txt"

## ============================================================================
file_to_open <- paste(data_file_path, data_file_name, sep="")

# Load date/timestamp from header
datacon <- file(description = file_to_open, open = "rt")
header  <- readLines(con = datacon, n=3)
closeAllConnections()

date_parts <- unlist(strsplit(substr(x = header[3]
                                     , start = 22
                                     , stop = nchar(header[3]))
                              , split = " "))

date_string <- paste(date_parts[1]
                     , date_parts[2]
                     , date_parts[3]
                     , date_parts[6]
                     , date_parts[4]
                     , sep=" ")
date_format <- "%a %b %d %Y %H:%M:%S"

start_timestamp <- strptime(x = date_string
                            , format = date_format
                            , tz = date_parts[5])
start_timestamp

# read in X,Y,Z accelerameter readings

readings <- read.table(file = file_to_open, 
                     , header = FALSE
                     , na.strings ="NA"
                     , skip = 8
                     , fill = TRUE,
                     , blank.lines.skip = TRUE
                     , stringsAsFactors=FALSE
                     , colClasses = c("numeric","numeric","numeric","numeric")
                     , col.names = c("x","y","z","time_diff_ms"))



## ============================================================================
tics <- cumsum(readings$time_diff_ms)/1000
plot(lowess(x = tics, y = readings$z, f=1/4))
