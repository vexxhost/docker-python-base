# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

FROM ghcr.io/vexxhost/ubuntu-cloud-archive:2024.2@sha256:5fc896ea0ea168f7327bd351bfae7ba3b190135283ba25a3705d16b8bf26aa3c
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
