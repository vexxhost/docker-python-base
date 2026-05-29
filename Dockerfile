# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

ARG FROM

FROM ${FROM}
ENV PATH=/var/lib/openstack/bin:$PATH
RUN --mount=type=bind,source=bindep.txt,target=/bindep.txt \
    --mount=type=bind,from=ghcr.io/vexxhost/build-utils:latest@sha256:f8a876946eb3b8e648a5b1dcfabf1d06e9f787711bb1ec12d0d017d3d991a09b,source=/bin,target=/build \
    /build/install-bindep-packages
