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
    mkdir /var/workspace && \
    git -C /var/workspace init && \
    mkdir /root/.ssh && \
    chmod 0700 /root/.ssh && \
    ln --symbolic --force /root/bin/post-commit.sh /var/workspace/.git/hooks/post-commit && \
    echo "source /root/bin/bash-prompt.sh" > /root/.bashrc && \
    dnf install --assumeyes gnupg gnupg2 && \
    dnf update --assumeyes && \
    dnf clean all
COPY post-commit.sh bash-prompt.sh scratch.sh merge-request.sh /root/bin/
EXPOSE 8080
CMD \
    git -C /var/workspace config user.email "${EMAIL}" && \
    git -C /var/workspace config user.name "${NAME}" && \
    git -C /var/workspace remote add canonical ${CANONICAL_URL} && \
    git -C /var/workspace remote add origin ${ORIGIN_URL} && \
    git -C /var/workspace remote set-url --push canonical no-pushing && \
    # cp /opt/personal/private/id_rsa /root/.ssh/id_rsa && \
    # chmod 0600 /root/.ssh/id_rsa && \
    ln --symbolic --force /root/bin/scratch.sh /root/bin/git-scratch && \
    ln --symbolic --force /root/bin/scratch.sh /root/bin/git-merge-request && \
    # gpg --allow-secret-key --import /opt/personal/gpg/secret_key/secret.key && \
    # gpg2 --allow-secret-key --import /opt/personal/gpg/secret_key/secret.key && \
    # gpg --import-ownertrust /opt/personal/gpg/owner_trust/owner.trust && \
    node "/opt/c9sdk/server.js" --listen 0.0.0.0 -w "/var/workspace" -p 8080 --auth user:password