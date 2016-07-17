FROM jenkins:2.7.1
RUN \
    apt-get update && \
    apt-get install -y sudo docker docker-compose && \
    echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers && \
    apt-get update
    