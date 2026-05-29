# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

ARG FROM

FROM ${FROM}
ENV PATH=/var/lib/openstack/bin:$PATH
RUN --mount=type=bind,source=bindep.txt,target=/bindep.txt \
    --mount=type=bind,from=ghcr.io/vexxhost/build-utils:latest@sha256:077f7ec16c55f6a09fc3fbd0f57e45f0cce48dbe4d2c234d7b7269d927f880d6,source=/bin,target=/build \
    /build/install-bindep-packages
