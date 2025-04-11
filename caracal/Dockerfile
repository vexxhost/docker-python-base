FROM ghcr.io/vexxhost/ubuntu-cloud-archive:caracal@sha256:db9685418828d105046d2b55d012627891340b09042ad85e56c049706ab84303
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
