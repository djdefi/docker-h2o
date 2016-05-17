# docker-h2o
Docker container for [h2o](https://github.com/kazuho/h2o) [![Build Status](https://travis-ci.org/djdefi/docker-h2o.svg?branch=master)](https://travis-ci.org/djdefi/docker-h2o)

# Automated Build
```bash
docker pull djdefi/docker-h2o
docker run -it -p 8080:8080 djdefi/docker-h2o
```

# Local build and run
## docker-compose
```bash
docker-compose build
docker-compose up
```

## Manual build
```bash
git clone
cd docker-h2o
docker build -it docker-h2o .
docker run -p 8080:8080 docker-h2o
```

# Usage

A) Place you own app within the /webapp in the project directory then build.

B) Mount your application into the container at /app
```bash
docker run -it -p 8080:8080 -v $(pwd)/webapp:/app djdefi/docker-h2o  
```
