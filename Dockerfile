# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

ARG FROM

FROM ${FROM}
ENV PATH=/var/lib/openstack/bin:$PATH
RUN --mount=type=bind,source=bindep.txt,target=/bindep.txt \
    --mount=type=bind,from=ghcr.io/vexxhost/build-utils:latest,source=/bin,target=/build \
    --mount=type=cache,target=/root/.cache/uv \
    --mount=type=cache,target=/root/.local/share/uv \
    /build/install-bindep-packages
