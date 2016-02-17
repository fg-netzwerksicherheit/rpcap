protocolNumberToName <-
function(vector){
    #uses an offline version of http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    #to map the decimal protocol number to the string keyword 
    names <- NULL
    for(i in vector){
      names <- c(names, protocol$Keyword[match(i,protocol$Decimal)])      
    }
    return(names)
}
