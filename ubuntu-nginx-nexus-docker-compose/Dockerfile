#
# Ubuntu Dockerfile
#
# Pull base image
FROM nginx

LABEL maintainer="Adil khan"
LABEL version="0.2"
LABEL description="This is custom Docker Image for ubuntu"

COPY ["ansible-play", "/home/ubuntu/"]
# Update system
RUN apt-get update && \
    apt install -y build-essential && \
    rm -rf /var/lib/apt/lists/*
#    apt-get install nginx -y
#    apt-get install -y vim ansible curl zip unzip && \
#    ansible-playbook /home/ubuntu/nginx-install.yml
#    ansible-playbook /home/ubuntu/java-install.yml && \
#    ansible-playbook /home/ubuntu/nexus2-install.yml 
COPY index.html /usr/share/nginx/html/
#RUN echo "service nginx start" >> ~/.bashrc
#RUN echo "RUN_AS_USER=root /opt/nexus/bin/nexus start" >> ~/.bashrc
