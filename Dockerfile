FROM golang:stretch

RUN apt install make gcc 

RUN git clone https://github.com/micromdm/micromdm && cd micromdm && make deps && make

RUN mkdir /micromdm-bin/
RUN cp micromdm/build/linux/micromdm /micromdm-bin/

RUN mkdir -p /var/db/micromdm/
