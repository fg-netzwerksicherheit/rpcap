# rpcap
A GNU R package to process network packet header data

This package contains an example data set of packet header data extracted from the DARPA Intrusion Detection Evaluation Data Set.
We implemented a set of well-known functions to analyze network data fast, simple and performant. Most functions aim to provide 
help to aggregate data or prepare plots for means of network monitoring, volume based network anomaly detection. 

Rpcap is currently under development - some functions can show issues and probably react unpleasant if confronted with 
unexpected data. If you need to process big amounts of data, we recommend to use a library for multiprocessor support such 
as snowfall in addition.

You can directly install the package from github as follows:

```
# apt-get install libssl-dev r-base-dev curl libcurl4-openssl-dev
# R
 > install.packages('devtools')
 > library(devtools)
 > install_github('fg-netzwerksicherheit/rpcap', subdir='rpcap')
 > library(rpcap)
 > data(packetHeader)
 > ...
```

# Example:
```
#Read data
df <- readPcapCsv('/home/xbadc0ffee/network_traffic.csv')

#Calculate min, max and mean for all packets
stats.framelen <- stats(df$frame.len)

#Calculate number of all packets per minute
aggregatePerTimeUnit(df$ip.proto, df$frame.time, unit='min')

#Calculate mean size of TCP packets per second
data(protocol)
is.TCP <- data[,]$ip.proto==protocolNameToNumber(c('tcp'))[1]
aggregatePerTimeUnit(df$frame.len, df$frame.time, filter=is.TCP, FUN=mean)

#Get number of packets per ip.dst
frequencyPerValue(df$ip.dst) 

#Calculate the number of occurences of each Layer 4 protocol
stats.packetsPerProto <- frequencyPerValue(df$ip.proto)
stats.packetsPerProto[1] <- protocolNumberToName(stats.packetsPerProto[1])

#Get the service name of port 80
data(port)
portNumberToName(80) 
```
