# rpcap
A GNU R package to process network packet header data

This package contains an example data set of packet header data extracted from the DARPA Intrusion Detection Evaluation Data Set.
We implemented a set of well-known functions to analyze network data fast, simple and performant. Most functions aim to provide 
help to aggregate data or prepare plots for means of network monitoring, volume based network anomaly detection. 

Rpcap is currently under development - some functions can show issues and probably react unpleasant if confronted with 
unexpected data. If you need to process big amounts of data, we recommend to use a library for multiprocessor support such 
as snowfall in addition.

You can directly install the package from github as follows:
apt-get install libssl-dev r-base-dev curl libcurl4-openssl-dev

R

install.packages('devtools')

library(devtools)

install_github('fg-netzwerksicherheit/rpcap', subdir='rpcap')
