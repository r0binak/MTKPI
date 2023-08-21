FROM tsl0922/ttyd:latest
LABEL maintainer="r0binak"

#Base image with web shell

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

# Install botb
RUN curl -LO https://github.com/brompwnie/botb/releases/latest/download/botb-linux-amd64 \
    && install botb-linux-amd64 /usr/local/bin/botb \
    && rm -rf botb-linux-amd64

# Install traitor
RUN curl -LO https://github.com/liamg/traitor/releases/latest/download/traitor-amd64 \
    && install traitor-amd64 /usr/local/bin/traitor \
    && rm -rf traitor-amd64

# Install kubeletctl
RUN curl -LO https://github.com/cyberark/kubeletctl/releases/latest/download/kubeletctl_linux_amd64 \
    && install kubeletctl_linux_amd64 /usr/local/bin/kubeletctl \
    && rm -rf kubeletctl_linux_amd64

# Install kubesploit C2 agent
RUN curl -LO https://github.com/cyberark/kubesploit/releases/latest/download/kubesploitAgent-Linux-x64.7z \
    && 7z x kubesploitAgent-Linux-x64.7z -r kubesploitAgent-Linux-x64 -pkubesploit \
    && install kubesploitAgent-Linux-x64 /usr/local/bin/kubesploit \
    && rm -rf kubesploitAgent-Linux-x64*

# Install CDK
RUN curl -LO https://github.com/cdk-team/CDK/releases/latest/download/cdk_linux_amd64 \
    && install cdk_linux_amd64 /usr/local/bin/cdk \
    && rm -rf cdk_linux_amd64

# Install peirates
RUN curl -L https://github.com/inguardians/peirates/releases/latest/download/peirates-linux-amd64.tar.xz \
    | tar -xJ peirates-linux-amd64/peirates \
    && install peirates-linux-amd64/peirates /usr/local/bin/ \
    && rm -rf peirates-linux-amd64

# Install ctrsploit
RUN curl -LO https://github.com/ctrsploit/ctrsploit/releases/latest/download/ctrsploit_linux_amd64 \
    && install ctrsploit_linux_amd64 /usr/local/bin/ctrsploit \
    && rm -rf cctrsploit_linux_amd64

# Install kdigger
RUN curl -LO https://github.com/quarkslab/kdigger/releases/latest/download/kdigger-linux-amd64 \
    && install kdigger-linux-amd64 /usr/local/bin/kdigger \
    && rm -rf kdigger-linux-amd64

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl \
    && mv kubectl k \
    && install ./k /usr/local/bin/ \
    && rm ./k

#Install amicontained
RUN curl -LO https://github.com/genuinetools/amicontained/releases/latest/download/amicontained-linux-amd64 \
    && install amicontained-linux-amd64 /usr/local/bin/amicontained \
    && rm -rf ./amicontained-linux-amd64

#Install linuxprivchecker
RUN curl -LO https://raw.githubusercontent.com/sleventyeleven/linuxprivchecker/master/linuxprivchecker.py \
    && install ./linuxprivchecker.py /usr/local/bin \
    && rm -rf linuxprivchecker.py

#Install unix-privesc-checker
RUN curl -L http://pentestmonkey.net/tools/unix-privesc-check/unix-privesc-check-1.4.tar.gz \
    | tar -xz \
    && install unix-privesc-check*/unix-privesc-check /usr/local/bin/ \
    && rm -rf unix-privesc-check

#Install deepce
RUN curl https://raw.githubusercontent.com/stealthcopter/deepce/main/deepce.sh > deepce.sh \
    && chmod +x deepce.sh \
    && install ./deepce.sh /usr/local/bin \
    && rm -rf deepce.sh

#Install helm
RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh \
    && chmod 700 get_helm.sh \
    && ./get_helm.sh \
    && rm ./get_helm.sh

#Install kube-hunter
RUN curl -LO https://github.com/aquasecurity/kube-hunter/releases/download/v0.6.8/kube-hunter-linux-x86_64-refs.tags.v0.6.8 \
    && install kube-hunter-linux-x86_64-refs.tags.v0.6.8 /usr/local/bin/kube-hunter \
    && rm ./kube-hunter-linux-x86_64-refs.tags.v0.6.8

#Install kubescape
RUN curl -s https://raw.githubusercontent.com/kubescape/kubescape/master/install.sh | /bin/bash

#Install kube-bench
RUN curl -LO https://github.com/aquasecurity/kube-bench/releases/download/v0.6.13/kube-bench_0.6.13_linux_amd64.deb && \
    dpkg -i kube-bench_0.6.13_linux_amd64.deb && \
    rm -f kube-bench_0.6.13_linux_amd64.deb

#Install etcdctl
RUN curl -OL https://github.com/etcd-io/etcd/releases/download/v3.3.13/etcd-v3.3.13-linux-amd64.tar.gz && \
    tar -xzvf etcd-v3.3.13-linux-amd64.tar.gz && cp etcd-v3.3.13-linux-amd64/etcdctl /usr/local/bin && \
    chmod +x /usr/local/bin/etcdctl && rm -rf etcd-v3.3.13-linux-amd64 && rm -f etcd-v3.3.13-linux-amd64.tar.gz

#Install DDexec
RUN curl -LO https://raw.githubusercontent.com/arget13/DDexec/main/ddexec.sh \
    && chmod +x ddexec.sh \
    && install ddexec.sh /usr/local/bin/ddexec.sh \
    && rm ./ddexec.sh

#Simple Bypass Falco
RUN mv /usr/bin/python3 /usr/bin/pton3 \
    && mv /usr/bin/curl /usr/bin/kurl \
    && mv /usr/bin/wget /usr/bin/vget 