protocolNameToNumber <-
function(vector){
    #uses an offline version of http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    #return the decimal number of this protocol
    names <- NULL
	numbers <- NULL
    for(i in vector){         
         numbers <- c(numbers, protocol$Decimal[match(toupper(i), protocol$Keyword)])
    }
    return(numbers)
}
