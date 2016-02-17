\name{protocolNumberToName}
\alias{protocolNumberToName}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Resolves protocol numbers
}
\description{
Expects one or more protocol numbers and returns a vector of protocol names.
}
\usage{
protocolNumberToName(vector)
}

\arguments{
  \item{vector}{
	A vector of protocol numbers
  }
}
\details{
This function maps the assigned Internet protocol numbers to a keyword.
}
\value{
Returns a vector of protocol names.
}

\seealso{
\code{\link{protocol}}, \code{\link{protocolNameToNumber}} 
}
\examples{
data(protocol)
protocolNumberToName(1)
}

