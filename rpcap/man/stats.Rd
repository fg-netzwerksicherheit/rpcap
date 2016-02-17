\name{stats}
\alias{stats}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Min, Max, Mean
}
\description{
	A function to summarize packet header fields.
}
\usage{
stats(vector)
}

\arguments{
  \item{vector}{
	Accepts any numeric vector
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
  Returns an dataframe with following values:
  \item{min}{}
  \item{max}{}
  \item{mean}{}
}

\examples{
data(packetHeader)
stats(packetHeader$frame.len)
}

