# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

FROM ghcr.io/vexxhost/ubuntu-cloud-archive:2024.2@sha256:90beec49c6345c7cdd4777662db9db34a5aa4dc8bc9253dce25e9bf010a9d098
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
