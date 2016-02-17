readPcapCsv <-
function(filename, sep=',') {
    #Read csv-file
    dataframe <- read.csv(filename, sep=sep, stringsAsFactors=FALSE)
   
    #Change Timestamp format "Jul 29, 2015 10:50:11.596093000 CEST" to POSIX
    #Please note that it is required to install this locale on your operating system!    
    Sys.setlocale("LC_TIME", "en_US.utf8")
    tmp <- strptime(dataframe$frame.time, "%b %e, %Y %H:%M:%S.")
    dataframe$frame.time <- as.POSIXct(tmp)
    
    # Replace missing values (e.g. ports) with -1
    dataframe[is.na(dataframe)] <- -1    

    return(dataframe)
}
