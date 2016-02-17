\name{protocol}
\alias{protocol}
\docType{data}
\title{
Data Set: Protocol
}
\description{
This data.frame provides a mapping between protocol numbers and names, as assigned by IANA
}
\usage{data("protocol")}
\format{
  A data frame with 147 observations on the following 2 variables.
  \describe{
    \item{\code{Decimal}}{a numeric vector}
    \item{\code{Keyword}}{a character vector}
  }
}
\details{
In the Internet Protocol version 4 (IPv4) [RFC791] there is a field
called "Protocol" to identify the next level protocol.  This is an 8
bit field.  In Internet Protocol version 6 (IPv6) [RFC2460], this field
is called the "Next Header" field.
}
\source{
http://www.iana.org/assignments/protocol-numbers/protocol-numbers.txt
}
\examples{
data(protocol)
protocolNameToNumber(c('icmp','tcp'))
protocolNumberToName(c(1,6))
}
\keyword{datasets}
