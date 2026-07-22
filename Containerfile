FROM quay.io/podman/stable

RUN dnf install -y buildah skopeo gettext --exclude container-selinux &&\
    dnf clean all &&\
    rm -rf /var/cache /var/log/dnf* /var/log/yum.*
