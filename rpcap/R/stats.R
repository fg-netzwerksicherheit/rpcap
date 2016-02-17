stats <-
function(vector) {
    #Return min, max and mean value of this vector
    min <- min(vector)
    max <- max(vector)
    mean <- mean(vector)
    dataframe <- data.frame(min, max, mean)
    names(dataframe) <- c("min", "max", "mean")
    return(dataframe)
}
