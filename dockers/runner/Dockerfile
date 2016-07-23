FROM fedora:23
RUN \
    dnf update --assumeyes && \
    dnf install --assumeyes dnf docker && \
    curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.rpm.sh | bash && \
    dnf update --assumeyes && \
    dnf install --assumeyes gitlab-ci-multi-runner && \
    dnf update --assumeyes
CMD \
    gitlab-runner register