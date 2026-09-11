# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

ARG FROM

FROM ${FROM}
ENV PATH=/var/lib/openstack/bin:$PATH

# Bullseye public LTS ended on 2026-08-31. Keep its final security packages
# available without changing the Python runtime used by this stable branch.
RUN <<'EOF' sh -eux
. /etc/os-release
if [ "$ID" = debian ] && [ "${VERSION_CODENAME:-}" = bullseye ]; then
    grep -qx 'deb http://deb.debian.org/debian-security bullseye-security main' /etc/apt/sources.list
    sed -i \
        's|^deb http://deb.debian.org/debian-security bullseye-security main$|deb [check-valid-until=no] http://snapshot.debian.org/archive/debian-security/20260901T000000Z/ bullseye-security main|' \
        /etc/apt/sources.list
fi
EOF
RUN --mount=type=bind,source=bindep.txt,target=/bindep.txt \
    --mount=type=bind,from=ghcr.io/vexxhost/build-utils:latest@sha256:077f7ec16c55f6a09fc3fbd0f57e45f0cce48dbe4d2c234d7b7269d927f880d6,source=/bin,target=/build \
    /build/install-bindep-packages
