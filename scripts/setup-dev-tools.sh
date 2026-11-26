#!/data/data/com.termux/files/usr/bin/bash

# Install common development tools in Termux.
# Safe to rerun: pkg install leaves already-installed packages in place.
set -euo pipefail

if [[ -z "${PREFIX:-}" || "$PREFIX" != "/data/data/com.termux/files/usr" ]]; then
  echo "Error: this script must be run inside Termux." >&2
  exit 1
fi

if ! command -v pkg >/dev/null 2>&1; then
  echo "Error: Termux package manager (pkg) was not found." >&2
  exit 1
fi

echo "Refreshing Termux package index..."
pkg update -y

echo "Installing Git, Python, and Node.js..."
pkg install -y git python nodejs

echo "Installation complete. Versions:"
git --version
python --version
node --version
npm --version
