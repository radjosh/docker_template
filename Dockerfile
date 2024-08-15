# Use the official node bookworm as the image
FROM node:22-bookworm

ADD ./share /root/share

# Upgrade pip and install Python dependencies
RUN apt-get -y update
RUN apt-get -y install git 
RUN apt-get -y install vim

# Expose port 3000 for the react application
EXPOSE 3000
