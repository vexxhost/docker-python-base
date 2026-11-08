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
    --mount=type=bind,from=ghcr.io/vexxhost/build-utils:latest@sha256:55246c00e9bc3b96c59fcd1db5bcbdb6519ee34f6e43fde6b7a903dbca65087d,source=/bin,target=/build \
    /build/install-bindep-packages
