FROM jenkins:2.7.1
USER root
RUN \
    apt-get update && \
    apt-get install -y sudo docker.io && \
    ln -sf /usr/bin/docker.io /usr/local/bin/docker && \
    echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers && \
    apt-get -y install python-pip && \
    pip install docker-compose && \
    usermod -a -G jenkins docker && \
    apt-get update
USER jenkins