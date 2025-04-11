FROM ghcr.io/vexxhost/ubuntu-cloud-archive:zed@sha256:f799303e995aff87a5a79e620a72bed902d23ead7de16d972ad08c45248eaa24
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
