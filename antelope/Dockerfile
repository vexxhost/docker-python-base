FROM ghcr.io/vexxhost/ubuntu-cloud-archive:antelope@sha256:f80a2c63991371da5af26b5af8adf5551301440e9fb099c799f065808927d20d
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
