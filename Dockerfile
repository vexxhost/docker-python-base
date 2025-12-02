# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

FROM ghcr.io/vexxhost/ubuntu-cloud-archive:2024.1@sha256:5ae7ed67541048b6273d6164fd6b4f49628f0ccd5407559dfd9573b031c13898
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
