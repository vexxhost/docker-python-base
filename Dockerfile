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
    --mount=type=bind,from=ghcr.io/vexxhost/build-utils:latest@sha256:48b22d3007eac14c33f4481d840e027eb723e6019b1ce9f33f7a19c02901bdc9,source=/bin,target=/build \
    /build/install-bindep-packages
