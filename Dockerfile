# start with a base image
#FROM ubuntu:14.10
FROM golang:1.4 
MAINTAINER Bradley Bossard <bradleybossard@gmail.com>

# Build the image
# docker build --rm -t docker-youtube-dl-gdrive .

# Fire up an instance with a bash shell
# docker run --rm -i -t docker-youtube-dl-gdrive 

# Download a movie
# youtube-dl https://www.youtube.com/watch?v=LEf28xuYcw4

RUN apt-get install -y curl \
                       git \
                       python

# Install youtube-dl
RUN curl https://yt-dl.org/latest/youtube-dl -o /usr/local/bin/youtube-dl
RUN chmod a+rx /usr/local/bin/youtube-dl

RUN go get -u github.com/odeke-em/drive/cmd/drive

WORKDIR /root

ADD welcome.sh welcome.sh
RUN cat welcome.sh >> .bashrc
#RUN rm /root/welcome.sh
RUN rm /root/welcome.sh

RUN mkdir -p gdrive/youtube-videos

WORKDIR /root/gdrive/youtube-videos





