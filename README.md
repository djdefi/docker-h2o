docker-h2o
==========
Docker container for https://github.com/kazuho/h2o

Local build and run
=========
```
git clone
cd docker-h2o
docker build -it h2o .
docker run -p 8080:8080 h2o
```

Place you own website within /webapp in the project directory.
