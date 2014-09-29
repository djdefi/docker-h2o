FROM ubuntu:14.04

RUN apt-get update && apt-get install -y git openssl build-essential cmake libssl-dev libyaml-dev

RUN git clone https://github.com/kazuho/h2o.git

WORKDIR /h2o
RUN git submodule update --init --recursive
RUN cmake .
RUN make h2o

EXPOSE 8080
COPY /h2o.conf /h2o.conf
COPY /webapp /app
CMD ./h2o -c /h2o.conf
