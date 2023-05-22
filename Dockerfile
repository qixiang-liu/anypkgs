FROM adoptopenjdk/openjdk8:jdk8u362-b09-ubuntu
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    #sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && \
    apt-get clean && \
    apt-get update && apt-get upgrade -y  && \
    ln -s /lib /lib64 && \
    apt install -y  bash tini jq   libc6 libpam-modules libnss3  && \
    echo "auth required pam_wheel.so use_uid" >> /etc/pam.d/su && \
    chgrp root /etc/passwd && chmod ug+rw /etc/passwd
