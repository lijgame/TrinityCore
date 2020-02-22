FROM ubuntu:19.10
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH;/usr/local/lib
RUN apt-get update && apt-get install mysql-client -y
WORKDIR /usr/local/bin
COPY ./bin /usr/local/bin
COPY ./lib /usr/local/lib