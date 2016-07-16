FROM fedora:23
RUN \
    dnf update --assumeyes && \
    dnf install --assumeyes git && \
    dnf update --assumeyes && \
    dnf clean all
VOLUME /var/workspace
ENV CANONICAL="canonical" ORIGIN="origin"
CMD \
    git -C /var/workspace init && \
    git -C /var/workspace remote add canonical ${CANONICAL} && \
    git -C /var/workspace remote add origin ${ORIGIN} && \
    git -C /var/workspace remote set-url --push canonical no-pushing
    