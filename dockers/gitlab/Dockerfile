FROM gitlab/gitlab-ce:8.9.6-ce.0
USER root
RUN \
    apt-get update && \
    apt-get install -y sudo docker.io && \
    ln -sf /usr/bin/docker.io /usr/local/bin/docker && \
    apt-get -y install python-pip && \
    pip install --upgrade pip && \
    pip install docker-compose && \
    usermod -a -G docker jenkins && \
    apt-get update
USER jenkins