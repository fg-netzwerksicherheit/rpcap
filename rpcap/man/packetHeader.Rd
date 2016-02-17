\name{packetHeader}
\alias{packetHeader}
\docType{data}
\title{
Data Set: PacketHeader
}
\description{
This data contains packet header data of a single day from the 1999 DARPA Intrusion Detection Evaluation Data Set. 
}
\usage{data("packetHeader")}
\format{
  \describe{packetHeader is a data.frame containing following vectors: ip.src, ip.dst, ip.proto, frame.len, frame.time, tcp.flags, tcp.dstport, tcp.srcport, udp.dstport, udp.srcport
  }
}
\details{
The Cyber Systems and Technology Group of MIT Lincoln Laboratory, under Defense Advanced Research Projects Agency and Air Force Research Laboratory sponsorship, 
has collected and distributed the first standard corpora for evaluation of computer network intrusion detection systems. 

A test bed generated live background traffic similar to that on a government site containing hundreds of users on thousands of
hosts. More than 200 instances of 58 attack types were launched against victim UNIX and Windows NT hosts in three weeks of training data and two
weeks of test data.

The data set has the objectives to to measure the
effectiveness of an IDS in detecting intrusive behavior in the
presence of normal computer and network activity and to measure
the effectiveness of response mechanisms and their impact on normal
users.

Following types of misuse can be present: Denial of service, Unauthorized access from a remote machine, 
Unauthorized transition to root by an unprivileged user, Surveillance and probing, Anomalous user behavior.
Many of these attacks are taken directly from Kris Kendall's MIT Master's thesis.

}
\source{
https://www.ll.mit.edu/ideval/index.html
}
\references{
Haines, Joshua W., et al. DARPA intrusion detection system evaluation: Design and procedures. Technical Report 1062, MIT Lincoln Laboratory, 2001.
}
\examples{
data(packetHeader)
plot(packetHeader$tcp.dstport)
}
\keyword{datasets}
