FROM ghcr.io/vexxhost/ubuntu-cloud-archive:bobcat@sha256:badb5d6722840217ad271753f6cee454bec28ab8096fb823591447b2f78435f2
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
