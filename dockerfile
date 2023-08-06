# Use the latest Ubuntu LTS as the base image
FROM ubuntu

#Install dependencies and Ansible
RUN apt-get update \
    && apt-get install -y python3 \
    && apt-get install -y openssh-server \
    && apt-get install -y vim \
    && apt-get install -y iputils.ping \
    && apt-get install -y ansible

# check if the ssh service is running
RUN service --status-all \
    && service ssh start


