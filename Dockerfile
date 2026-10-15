# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

ARG FROM

FROM ${FROM}
ENV PATH=/var/lib/openstack/bin:$PATH
RUN --mount=type=bind,source=bindep.txt,target=/bindep.txt \
    --mount=type=bind,from=ghcr.io/vexxhost/build-utils:latest@sha256:e57edad3eec03ea4186f5cdd1dd9ced87fe13f6dff14d387d19dc2961b802ece,source=/bin,target=/build \
    /build/install-bindep-packages
