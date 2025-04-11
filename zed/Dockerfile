FROM ghcr.io/vexxhost/ubuntu-cloud-archive:zed@sha256:1d394cd16b10e8215fa186f1e40b7df790b5ac326e625734562c00182a0ec853
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
