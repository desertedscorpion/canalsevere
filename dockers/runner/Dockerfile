FROM gitlab/gitlab-runner:v1.4.0
RUN \
    apt-get update && \
    wget -qO- https://get.docker.com/ | sh && \
    echo "gitlab-runner        ALL=(ALL)       NOPASSWD: /usr/bin/docker" > /etc/sudoers.d/gitlab-runner && \
    chmod 0444 /etc/sudoers.d/gitlab-runner && \
    apt-get update && \
    apt-get clean
