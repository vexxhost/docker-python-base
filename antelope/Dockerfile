FROM ghcr.io/vexxhost/ubuntu-cloud-archive:antelope@sha256:ddfb567a99e699603c49a5179e2cfcec0b8523eb4f18ee2ab94f27e64f7491d8
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
