aggregatePerTimeUnit <-
function(vector, frame.time, unit='sec', filter=vector==vector, FUN=length) {
    #Summarize the packets by time windows and an optional filter and returns the result of a given function
    interval <- cut(frame.time, breaks=unit)
    result <- aggregate(vector, by=list(interval,filter), FUN=FUN)
    return(result[result$Group.2 == TRUE,-2])
}
