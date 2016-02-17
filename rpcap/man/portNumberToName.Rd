\name{portNumberToName}
\alias{portNumberToName}

\title{
Resolves port numbers
}

\description{
	Expects one or more port numbers and returns a vector of port names.
}

\usage{
portNumberToName(vector)
}

\arguments{
  \item{vector}{
	A vector of port numbers
  }
}
\details{
This function maps the assigned port numbers to the corresponding service name.
}
\value{
Returns a vector of port names.
}

\seealso{
\code{\link{port}}
}
\examples{
data(port)
portNumberToName(port$Port.Number)
}

