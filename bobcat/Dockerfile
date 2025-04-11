FROM ghcr.io/vexxhost/ubuntu-cloud-archive:bobcat@sha256:20587c0986c4ac76d9a5b146ecbfd25f8c08a30ec1f50cd5a319f86d8b19419c
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
