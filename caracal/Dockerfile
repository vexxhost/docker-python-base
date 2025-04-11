FROM ghcr.io/vexxhost/ubuntu-cloud-archive:caracal@sha256:3d42309c52fa14cfa1143f014817fac20b6aa1f0e0f30954c1f8107b4c3f5f52
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
