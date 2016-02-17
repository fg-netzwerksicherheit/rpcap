frequencyPerValue <-
function(vector){
    #counts the occurences for each unique value
    return(aggregate(vector, by=list(vector), FUN=length))
}
