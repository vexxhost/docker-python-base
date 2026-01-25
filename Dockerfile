# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

ARG FROM=ghcr.io/vexxhost/ubuntu-cloud-archive:main@sha256:de1f31c2017c1928ec9c8f5f22c00cc4779a4f303b1ca647072fcd12b5184d90

FROM ${FROM}
ENV PATH=/var/lib/openstack/bin:$PATH
RUN --mount=type=bind,source=bindep.txt,target=/bindep.txt \
    --mount=type=bind,source=install-packages,target=/usr/local/bin/install-packages \
    --mount=type=bind,from=ghcr.io/astral-sh/uv:latest,source=/uv,target=/usr/local/bin/uv \
    --mount=type=bind,from=ghcr.io/astral-sh/uv:latest,source=/uvx,target=/usr/local/bin/uvx \
    install-packages $(uvx bindep -b -f /bindep.txt)
