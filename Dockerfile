# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

<<<<<<< HEAD
FROM ghcr.io/vexxhost/ubuntu-cloud-archive:2023.2@sha256:6c721a5976172fafaa44072b38a8e8236464ae1316c96dd5ae2faa5217fd59ac
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
=======
ARG FROM

FROM ${FROM}
ENV PATH=/var/lib/openstack/bin:$PATH
RUN --mount=type=bind,source=bindep.txt,target=/bindep.txt \
    --mount=type=bind,from=ghcr.io/vexxhost/build-utils:latest,source=/bin,target=/build \
    /build/install-bindep-packages
>>>>>>> e0c6146 (fix: add docker build for Debian image (#46))
