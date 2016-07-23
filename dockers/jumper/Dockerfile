FROM fedora:23
RUN \
    dnf update --assumeyes && \
    curl -fsSL https://get.docker.com/ | sh && \
    dnf update --assumeyes && \
    dnf install --assumeyes docker-engine && \
    curl -L https://github.com/docker/compose/releases/download/1.7.1/run.sh > /usr/local/bin/docker-compose && \
    chmod 0500 /usr/local/bin/docker-compose && \
    dnf update --assumeyes && \
    dnf clean all
CMD \
    cd /usr/local/src && \
    ls -lh && \
    bash && \
    echo docker-compose exec runner gitlab-runner register