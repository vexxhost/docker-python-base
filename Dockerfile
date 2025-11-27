# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

FROM ghcr.io/vexxhost/ubuntu-cloud-archive:2023.1@sha256:2d2c3b5921bc65c3c0fc24322a2605c2cf66efbdb48fb158834889128f832551
ENV PATH=/var/lib/openstack/bin:$PATH
RUN <<EOFRUN bash -xe
apt-get update -qq
apt-get install -qq -y --no-install-recommends \
    ca-certificates \
    libpython3.10 \
    lsb-release \
    libpcre3 \
    python3-setuptools \
    sudo
apt-get clean
rm -rf /var/lib/apt/lists/*
EOFRUN
