portNumberToName <-
function(vector){
    #uses an offline version of http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    #to map the decimal protocol number to the string keyword 
    names <- NULL
    for(i in vector){
      names <- c(names, port$Service.Name[match(i,port$Port.Number)])      
    }
    return(names)
}
