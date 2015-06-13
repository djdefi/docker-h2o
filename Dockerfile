FROM debian:jessie

RUN apt-get update && apt-get install -y git openssl build-essential cmake libssl-dev libyaml-dev \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/kazuho/h2o.git && \
    git submodule update --init --recursive

WORKDIR /h2o
RUN cmake . && make h2o

EXPOSE 8080
COPY /h2o.conf /h2o.conf
COPY /webapp /app
CMD ./h2o -c /h2o.conf
