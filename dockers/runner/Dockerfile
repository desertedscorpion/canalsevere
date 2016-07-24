FROM gitlab/gitlab-runner:v1.4.0
RUN \
    apt-get update && \
    wget -qO- https://get.docker.com/ | sh && \
    usermod-a -G docker gitlab-runner && \
    apt-get update && \
    apt-get clean
