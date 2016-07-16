FROM fedora:23
RUN 
    dnf update --assumeyes && \
    dnf install --assumeyes coreutils git make python tar which bzip2 ncurses gmp-devel mpfr-devel libmpc-devel glibc-devel flex bison glibc-static zlib-devel gcc gcc-c++ nodejs npm && \
    mkdir /opt/c9sdk && \
    chmod 0555 /opt/c9sdk && \
    git -C /opt/c9sdk init && \
    git -C /opt/c9sdk remote add origin git://github.com/c9/core.git && \
    git -C /opt/c9sdk pull origin master && \
    /opt/c9sdk/scripts/install-sdk.sh && \
    curl --insecure https://gitlab.363-283.io/emory.merryman/c9-install/raw/master/install.sh | bash && \
    dnf update --assumeyes && \
    dnf clean all
VOLUME /var/workspace
EXPOSE 8080
CMD node "/opt/c9sdk/server.js" --listen 0.0.0.0 -w "/var/workspace" -p 8080 --auth user:password 