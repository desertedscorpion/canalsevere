FROM fedora:23
RUN \
    dnf update --assumeyes && \
    curl -fsSL https://get.docker.com/ | sh && \
    dnf update --assumeyes && \
    dnf install --assumeyes docker-engine && \
    dnf update --assumeyes && \
    dnf clean all
CMD \
    cd /usr/local/src && \
    echo hi && \
    pwd && \
    bash # docker-compose exec runner gitlab-runner register