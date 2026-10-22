# Cogenity Homebrew tap

Homebrew Cask for [Cogenity](https://github.com/cogenityhq/cogenity), the
multi-account manager for Claude Code and Codex. Product information, pricing
and the changelog live at [cogenity.sh](https://cogenity.sh).

## Install

```sh
brew install --cask cogenityhq/tap/cogenity
```

The Cask installs the signed and notarized macOS executable for Apple silicon
or Intel from the matching GitHub release of `cogenityhq/cogenity` and links it
as `cogenity`. It requires macOS 13 or newer. Linux users install with the
script at [cogenity.sh](https://cogenity.sh) instead.

## Update

```sh
brew upgrade --cask --no-ask cogenityhq/tap/cogenity
```

`cogenity update` runs the same command for a Homebrew Cask install after it
verifies the install receipt.

## Contents

- `Casks/cogenity.rb`: the current Cask, with one SHA-256 per architecture.
- `tap_migrations.json`: moves installs of the older `cogenity` Formula to the
  Cask.

Cogenity's release pipeline writes every file in this repository on each
release. Do not edit it by hand. Write to [hello@cogenity.sh](mailto:hello@cogenity.sh)
about an installation problem.
