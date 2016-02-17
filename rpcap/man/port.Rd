\name{port}
\alias{port}
\docType{data}
\title{
Data Set: Port
}
\description{
This data.frame provides a mapping between port numbers and names, as assigned by IANA
}
\usage{data("port")}
\format{
  A data frame with 11485 observations on the following 3 variables.
  \describe{
    \item{\code{Service.Name}}{a character vector}
    \item{\code{Port.Number}}{a numeric vector}
    \item{\code{Transport.Protocol}}{a character vector}
  }
}
\details{
Service names and port numbers are used to distinguish between different
 services that run over transport protocols such as TCP, UDP, DCCP, and
 SCTP.

 Service names are assigned on a first-come, first-served process, as
 documented in [RFC6335].

 Port numbers are assigned in various ways, based on three ranges: System
 Ports (0-1023), User Ports (1024-49151), and the Dynamic and/or Private
 Ports (49152-65535); the difference uses of these ranges is described in
 [RFC6335]. System Ports are assigned by IETF
 process for standards-track protocols, as per [RFC6335].  User Ports
 are assigned by IANA using the "IETF Review" process, the "IESG
 Approval" process, or the "Expert Review" process, as per
 [RFC6335].  Dynamic Ports are not assigned.

 The registration procedures for service names and port numbers are
 described in [RFC6335].
}
\source{
https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.txt
}

\examples{
data(port)
portNumberToName(c(80,21))
}
\keyword{datasets}
