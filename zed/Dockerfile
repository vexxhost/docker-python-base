FROM ghcr.io/vexxhost/ubuntu-cloud-archive:zed@sha256:9338393563234dddb116afbf620dbd43fabd11084bb8fc94ff166a21b08683aa
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
