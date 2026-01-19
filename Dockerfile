# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

FROM ghcr.io/vexxhost/ubuntu-cloud-archive:2024.1@sha256:35b7917ca0fc2c7b125d1ed9cef06d2b231ff73a782d69d40956ca2909e0f343
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
