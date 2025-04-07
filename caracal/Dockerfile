FROM ghcr.io/vexxhost/ubuntu-cloud-archive:caracal@sha256:464740a80e8d800f5abd4ada71e299477437d424a27dc2f1a6a04116ec5ce3be
ENV PATH=/var/lib/openstack/bin:$PATH
RUN \
  --mount=type=cache,target=/var/cache/apt,sharing=locked \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        libpython3.10 \
        lsb-release \
        python3-distutils \
        sudo
