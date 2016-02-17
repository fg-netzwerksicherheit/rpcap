\name{protocolNameToNumber}
\alias{protocolNameToNumber}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Resolves protocol names
}
\description{
Expects one or more protocol names and returns a vector of protocol numbers.
}
\usage{
protocolNameToNumber(vector)
}

\arguments{
  \item{vector}{
	A vector of protocol keywords
  }
}
\details{
This function maps the assigned Internet protocol keywords to decimal numbers.
}
\value{
Returns a vector of protocol numbers.
}

\seealso{
\code{\link{protocol}}, \code{\link{protocolNumberToName}} 
}
\examples{
data(protocol)
protocolNameToNumber('icmp')
}
