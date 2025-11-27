# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

FROM ghcr.io/vexxhost/ubuntu-cloud-archive:main@sha256:685b7a7bb878eba18f4f09865d525fb2691e4d7853035d2ef08bcf50a60b8424
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
