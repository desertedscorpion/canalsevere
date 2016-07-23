FROM fedora:23
RUN \
    dnf update --assumeyes && \
    dnf install --assumeyes docker docker-compose && \
    dnf update --assumeyes && \
    dnf clean all
CMD \
    cd /usr/local/src && \
    echo hi && \
    pwd && \
    docker-compose exec runner gitlab-runner register