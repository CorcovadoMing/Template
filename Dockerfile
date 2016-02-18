FROM ubuntu:14.04

RUN apt-get update -y \
	&& apt-get install make git -y \
	&& rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/CorcovadoMing/Template.git template

RUN cd template && make install

