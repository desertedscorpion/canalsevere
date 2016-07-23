FROM fedora:23
RUN \
    dnf update --assumeyes && \
    dnf install --assumeyes dnf docker && \
    dnf update --assumeyes
CMD \
    gitlab-ci-multi-runner register