# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

FROM ghcr.io/vexxhost/ubuntu-cloud-archive:main@sha256:6df0ab362e110ebb50062ab5932bd8c891bd825573c3a3eb03c487d22f50bf91
ENV PATH=/var/lib/openstack/bin:$PATH
RUN \
    apt-get update -qq && \
    apt-get install -qq -y --no-install-recommends \
        ca-certificates \
        libpython3.12 \
        lsb-release \
        libpcre3 \
        python3-setuptools \
        sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
