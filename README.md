# Termux setup

A small setup script for installing common development tools in [Termux](https://termux.dev/): Git, Python, and Node.js.

## Requirements

- Termux installed from a supported source (such as F-Droid or the official GitHub releases).
- An internet connection.

## Install tools

From the repository directory, run:

```sh
bash scripts/setup-dev-tools.sh
```

The script refreshes the package index, then installs `git`, `python`, and `nodejs` using Termux's package manager. It does not run a full system upgrade or change shell configuration.

Verify the installations with:

```sh
git --version
python --version
node --version
npm --version
```

You can also install the packages manually:

```sh
pkg update -y
pkg install -y git python nodejs
```
