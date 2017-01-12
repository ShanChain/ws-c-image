#Version:0.0.1
FROM ubuntu:14.04
MAINTAINER snow "xuefeng.zhao@shanchain.com"
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update && \
	apt-get install -y git libmysqlclient-dev build-essential libtool automake libevent-dev libssl-dev
RUN cd lib && \
	git clone git://github.com/payden/libwebsock.git && \
RUN cd lib/libwebsock && \
	./autogen.sh && \
	./configure && make && sudo make install
	