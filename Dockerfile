# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

ARG FROM

FROM ${FROM}
ENV PATH=/var/lib/openstack/bin:$PATH
RUN --mount=type=bind,source=bindep.txt,target=/bindep.txt \
    --mount=type=bind,from=ghcr.io/vexxhost/build-utils:latest@sha256:dbe759bc2a77ec1915eb814d27e1a46b0b30ae9dddda206c4de9ee45f3eb5c78,source=/bin,target=/build \
    /build/install-bindep-packages
