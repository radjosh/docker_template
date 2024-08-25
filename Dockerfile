FROM ubuntu:latest

ADD ./share /root/share

# install dependencies
RUN apt-get -y update
RUN apt-get -y install git 
RUN apt-get -y install vim
RUN apt-get -y install golang-go
RUN apt-get -y install npm
RUN apt-get -y install postgresql

# install react from CLI once it's up!

# Expose port 3000 for the react application
EXPOSE 3000
