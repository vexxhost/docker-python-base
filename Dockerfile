# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

ARG FROM

FROM ${FROM}
ENV PATH=/var/lib/openstack/bin:$PATH
RUN --mount=type=bind,source=bindep.txt,target=/bindep.txt \
    --mount=type=bind,from=ghcr.io/vexxhost/build-utils:latest@sha256:e9473fc5185c82745d83facbc8c869c7797bd5e2ac9ca72f8c930fc0448e2b43,source=/bin,target=/build \
    /build/install-bindep-packages
