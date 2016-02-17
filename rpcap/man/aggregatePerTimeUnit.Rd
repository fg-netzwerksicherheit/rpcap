\name{aggregatePerTimeUnit}
\alias{aggregatePerTimeUnit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Aggregate data per TimeUnit
}
\description{
Summarize the packets by time windows and an optional filter.
Returns the result of a given function.   
}

\usage{
aggregatePerTimeUnit(vector, frame.time, unit = "sec", filter = vector == vector, FUN = length)
}

\arguments{
  \item{vector}{
	Field to summarize
}
  \item{frame.time}{
	Vector with POSIX time
}
  \item{unit}{
	sec, min, ...
}
  \item{filter}{
	e.g. packetHeader$tcp.dstport == 80, ...
}
  \item{FUN}{
	A function to summarize each the vector for each time window 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}

\examples{

data(packetHeader)
aggregatePerTimeUnit(packetHeader$tcp.dstport, packetHeader$frame.time)

}
