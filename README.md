# Python base images

The Zed and 2023.1 Debian variants retain Bullseye and Python 3.9. Bullseye
public LTS ended on August 31, 2026, and its live security metadata expired
on September 7, preventing subsequent package installations.

These variants use Debian's September 1, 2026 security snapshot. Metadata
expiry checking is disabled only for that frozen security source; APT still
verifies Debian signatures and package hashes. Other sources retain their
normal validation. This restores access to the final public security package
set; it does not provide ongoing security updates after public LTS.

The Ubuntu, Rocky Linux, and AlmaLinux variants keep their existing sources.
