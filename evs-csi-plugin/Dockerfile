FROM centos:7.9.2009
LABEL maintainers="Huawei Cloud Authors"
LABEL description="Huawei Cloud EVS CSI Plugin"

COPY evs-csi-plugin /bin/

RUN yum install -y ca-certificates file tzdata nfs-utils xfsprogs e4fsprogs nc pciutils && chmod 777 /bin/evs-csi-plugin

CMD ["/bin/evs-csi-plugin"]
# ENTRYPOINT ["/bin/evs-csi-plugin"]
