# Install botb
curl -LO https://github.com/brompwnie/botb/releases/download/1.8.0/botb-linux-amd64 \
    && install botb-linux-amd64 /usr/local/bin/botb \
    && rm -rf botb-linux-amd64;

# Install traitor
curl -LO https://github.com/liamg/traitor/releases/download/v0.0.14/traitor-amd64 \
    && install traitor-amd64 /usr/local/bin/traitor \
    && rm -rf traitor-amd64;

# Install kubeletctl
curl -LO https://github.com/cyberark/kubeletctl/releases/download/v1.11/kubeletctl_linux_amd64 \
    && install kubeletctl_linux_amd64 /usr/local/bin/kubeletctl \
    && rm -rf kubeletctl_linux_amd64;

# Install kubesploit C2 agent
curl -LO https://github.com/cyberark/kubesploit/releases/download/v0.1.3/kubesploitAgent-Linux-x64.7z \
    && 7z x kubesploitAgent-Linux-x64.7z -r kubesploitAgent-Linux-x64 -pkubesploit \
    && install kubesploitAgent-Linux-x64 /usr/local/bin/kubesploit \
    && rm -rf kubesploitAgent-Linux-x64*;

# Install CDK
curl -LO https://github.com/cdk-team/CDK/releases/download/v1.5.2/cdk_linux_amd64 \
    && install cdk_linux_amd64 /usr/local/bin/cdk \
    && rm -rf cdk_linux_amd64;

# Install peirates
curl -L https://github.com/inguardians/peirates/releases/download/v1.14/peirates-linux-amd64.tar.xz \
    | tar -xJ peirates-linux-amd64/peirates \
    && install peirates-linux-amd64/peirates /usr/local/bin/ \
    && rm -rf peirates-linux-amd64;

# Install ctrsploit
curl -LO https://github.com/ctrsploit/ctrsploit/releases/download/v0.5.11/ctrsploit_linux_amd64 \
    && install ctrsploit_linux_amd64 /usr/local/bin/ctrsploit \
    && rm -rf cctrsploit_linux_amd64;

# Install kdigger
curl -LO https://github.com/quarkslab/kdigger/releases/download/v1.5.0/kdigger-linux-amd64 \
    && install kdigger-linux-amd64 /usr/local/bin/kdigger \
    && rm -rf kdigger-linux-amd64;

# Install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl \
    && mv kubectl k \
    && install ./k /usr/local/bin/ \
    && rm ./k;

#Install amicontained
curl -LO https://github.com/genuinetools/amicontained/releases/download/v0.4.9/amicontained-linux-amd64 \
    && install amicontained-linux-amd64 /usr/local/bin/amicontained \
    && rm -rf ./amicontained-linux-amd64;

#Install linuxprivchecker
curl -LO https://raw.githubusercontent.com/sleventyeleven/linuxprivchecker/master/linuxprivchecker.py \
    && install ./linuxprivchecker.py /usr/local/bin \
    && rm -rf linuxprivchecker.py;

#Install unix-privesc-checker
curl -L http://pentestmonkey.net/tools/unix-privesc-check/unix-privesc-check-1.4.tar.gz \
    | tar -xz \
    && install unix-privesc-check*/unix-privesc-check /usr/local/bin/ \
    && rm -rf unix-privesc-check;

#Install deepce
curl https://raw.githubusercontent.com/stealthcopter/deepce/main/deepce.sh > deepce.sh \
    && chmod +x deepce.sh \
    && install ./deepce.sh /usr/local/bin \
    && rm -rf deepce.sh;

#Install helm
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh \
    && chmod 700 get_helm.sh \
    && ./get_helm.sh \
    && rm ./get_helm.sh;

#Install kube-hunter
curl -LO https://github.com/aquasecurity/kube-hunter/releases/download/v0.6.8/kube-hunter-linux-x86_64-refs.tags.v0.6.8 \
    && install kube-hunter-linux-x86_64-refs.tags.v0.6.8 /usr/local/bin/kube-hunter \
    && rm ./kube-hunter-linux-x86_64-refs.tags.v0.6.8;

#Install kubescape
curl -s https://raw.githubusercontent.com/kubescape/kubescape/master/install.sh | /bin/bash;

#Install kube-bench
curl -LO https://github.com/aquasecurity/kube-bench/releases/download/v0.6.19/kube-bench_0.6.19_linux_amd64.deb && \
    dpkg -i kube-bench_0.6.19_linux_amd64.deb && \
    rm -f kube-bench_0.6.19_linux_amd64.deb;

#Install etcdctl
curl -OL https://github.com/etcd-io/etcd/releases/download/v3.3.13/etcd-v3.3.13-linux-amd64.tar.gz && \
    tar -xzvf etcd-v3.3.13-linux-amd64.tar.gz && cp etcd-v3.3.13-linux-amd64/etcdctl /usr/local/bin && \
    chmod +x /usr/local/bin/etcdctl && rm -rf etcd-v3.3.13-linux-amd64 && rm -f etcd-v3.3.13-linux-amd64.tar.gz;

#Install DDexec
curl -LO https://raw.githubusercontent.com/arget13/DDexec/main/ddexec.sh \
    && chmod +x ddexec.sh \
    && install ddexec.sh /usr/local/bin/ddexec.sh \
    && rm ./ddexec.sh;

# Install kubetcd
curl -LO https://github.com/nccgroup/kubetcd/releases/download/v1.28/kubetcd_linux_amd64 \
    && install kubetcd_linux_amd64 /usr/local/bin/kubetcd \
    && rm ./kubetcd_linux_amd64;

#Simple Bypass Falco
mv /usr/bin/python3 /usr/bin/pton3 \
    && mv /usr/bin/curl /usr/bin/kurl \
    && mv /usr/bin/wget /usr/bin/vget;