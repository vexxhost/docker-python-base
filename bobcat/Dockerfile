FROM ghcr.io/vexxhost/ubuntu-cloud-archive:bobcat@sha256:6bdb08e8b439d625fd00f4a2df01df6120478913b55830dfc0b1a16243c56f16
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
