\name{frequencyPerValue}
\alias{frequencyPerValue}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Count the occurences of each unique value
}
\description{
This function counts the occurences of each unique value and is e.g. used to 
analyze categorical data such as IP addresses. 
}
\usage{
frequencyPerValue(vector)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{vector}{
	Your input variable. 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a data.frame with each unique value and the number of occurences
}

\examples{
data(packetHeader)
frequencyPerValue(packetHeader$ip.src)
}

