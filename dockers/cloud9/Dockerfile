FROM fedora:23
RUN \
    dnf update --assumeyes && \
    dnf install --assumeyes coreutils git make python tar which bzip2 ncurses gmp-devel mpfr-devel libmpc-devel glibc-devel flex bison glibc-static zlib-devel gcc gcc-c++ nodejs npm && \
    mkdir /opt/c9sdk && \
    chmod 0555 /opt/c9sdk && \
    git -C /opt/c9sdk init && \
    git -C /opt/c9sdk remote add origin git://github.com/c9/core.git && \
    git -C /opt/c9sdk pull origin master && \
    /opt/c9sdk/scripts/install-sdk.sh && \
    curl --insecure https://gitlab.363-283.io/emory.merryman/c9-install/raw/master/install.sh | bash && \
    dnf install --assumeyes docker docker-compose && \
    mkdir /root/.ssh && \
    chmod 0700 /root/.ssh && \
    dnf update --assumeyes && \
    dnf clean all
EXPOSE 8080
CMD \
    chmod 0600 /root/.ssh/id_rsa && \
    WORKSPACE=$(mktemp -d) && \
    git -C ${WORKSPACE} init && \
    git -C ${WORKSPACE} remote add canonical ${CANONICAL_URL} && \
    git -C ${WORKSPACE} remote add origin ${ORIGIN_URL} && \
    git -C ${WORKSPACE} remote set-url --push canonical no-pushing && \
    node "/opt/c9sdk/server.js" --listen 0.0.0.0 -w "${WORKSPACE}" -p 8080 --auth user:password 