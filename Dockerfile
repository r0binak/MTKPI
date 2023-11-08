FROM docker.io/tsl0922/ttyd:latest
LABEL maintainer="r0binak"

EXPOSE 7681

WORKDIR /var/run

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        curl \
        iputils-ping \
        nano \
        python3-pip \
        dnsutils \
        apt-file \
        net-tools \
        nmap \
        stow \
        git-core \
        sudo \
        util-linux\
        p7zip-full \
        jq \
        ssh \
        python \
        python3 \
        upx \
        && rm -rf /var/lib/apt/lists/*

COPY install.sh .
RUN chmod +x install.sh && ./install.sh && rm -f install.sh