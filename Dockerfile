# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

ARG FROM

FROM ${FROM}
ENV PATH=/var/lib/openstack/bin:$PATH
RUN --mount=type=bind,source=bindep.txt,target=/bindep.txt \
    --mount=type=bind,from=ghcr.io/vexxhost/build-utils:latest@sha256:287aa63d116f9e49c525b52aa9ffed40c292bb089190c6f348992dfed5cb0646,source=/bin,target=/build \
    /build/install-bindep-packages
