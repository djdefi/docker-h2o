FROM debian:jessie

RUN apt-get update && apt-get install -y ca-certificates git openssl build-essential cmake libssl-dev libyaml-dev \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/kazuho/h2o.git && \
    
WORKDIR /h2o
RUN git submodule update --init --recursive && \
    cmake . && \
    make h2o

EXPOSE 8080
COPY /h2o.conf /h2o.conf
COPY /webapp /app
CMD ./h2o -c /h2o.conf
