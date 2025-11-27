# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

FROM ghcr.io/vexxhost/ubuntu-cloud-archive:2025.2@sha256:393e3d9c51fe69efb34cf629d2c9c1c80613b5f09d5c9919a2d959c0a84ab5ec
ENV PATH=/var/lib/openstack/bin:$PATH
RUN \
    apt-get update -qq && \
    apt-get install -qq -y --no-install-recommends \
        ca-certificates \
        libpython3.10 \
        lsb-release \
        python3-distutils \
        sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
