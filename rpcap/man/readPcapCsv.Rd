\name{readPcapCsv}
\alias{readPcapCsv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Read and prepare a pcap-files
}
\description{
Reads a csv-file with packet header data,
changes the timestamp format from wireshark "Jul 29, 2015 10:50:11.596093000 CEST" to POSIX  
and replaces missing values (e.g. ports) with -1.
Please note that it is required to install this locale on your operating system! 
If you don't need this data preprocessing or don't want to use frame.time in your data, use the normal read.csv(). 
}
\usage{
readPcapCsv(filename, sep = ",")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{filename}{
	filname of your csv-file
}
  \item{sep}{
	your separator (A semicolon probably works best, the comma, dot or whitespaces are included in wiresharks times-format)
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a data.frame 
}
\references{
http://linux.die.net/man/1/tshark
}

\note{
You can export pcap-files using the following commands:
"apt-get install tshark"
"tshark -r test.pcap -T fields -e frame.time -e ip.src -e ip.dst -e ip.proto -E header=y -E separator=',' > test.csv"
The keywords for the fields to export are equal to the expressions you can use in wireshark.

You can install the locale en_US.utf8 using 
"sudo dpkg-reconfigure locales"
}


\examples{

}
