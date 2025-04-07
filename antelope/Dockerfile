FROM ghcr.io/vexxhost/ubuntu-cloud-archive:antelope@sha256:0f4c144692dda2d4d3b43bee990e3d24f9af7c91e8c9bbc4022008dc4d8f4c14
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
