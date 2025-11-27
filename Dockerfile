# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

FROM ghcr.io/vexxhost/ubuntu-cloud-archive:2025.1@sha256:10d254bed93d6a5e213c0a4f54874e346f8191b81326f4a0d709e1db8a0ab35a
ENV PATH=/var/lib/openstack/bin:$PATH
RUN <<EOFRUN bash -xe
apt-get update -qq
apt-get install -qq -y --no-install-recommends \
    ca-certificates \
    libpython3.12 \
    lsb-release \
    libpcre3 \
    python3-setuptools \
    sudo
apt-get clean
rm -rf /var/lib/apt/lists/*
EOFRUN
