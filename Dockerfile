# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

FROM ghcr.io/vexxhost/ubuntu-cloud-archive:zed@sha256:9aafd7d01b0f3589205092052e476e70290f4847e2efeb1b3c07a4e8c315f0ad
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
