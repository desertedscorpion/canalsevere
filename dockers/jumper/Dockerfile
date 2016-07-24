FROM fedora:23
RUN \
    dnf update --assumeyes && \
    curl -fsSL https://get.docker.com/ | sh && \
    dnf update --assumeyes && \
    dnf install --assumeyes docker-engine && \
    curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose && \
    dnf update --assumeyes && \
    dnf clean all
CMD \
    cd /usr/local/src && \
    ls -lh && \
    bash && \
    sleep $((1000 * 60 * 10))s && \
    echo docker-compose exec runner gitlab-runner register