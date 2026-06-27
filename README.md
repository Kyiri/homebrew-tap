# Kyiri Homebrew Tap

Homebrew cask for [Kyiri Clip](https://kyiri.com) — a clipboard history manager for macOS.

## Install

```bash
brew install --cask kyiri/tap/kyiri-clip
```

or:

```bash
brew tap kyiri/tap
brew install --cask kyiri-clip
```

> Note: the cask downloads the `.dmg` from the latest release of the
> [`kyiri-clip`](https://github.com/Kyiri/kyiri-clip) repo, so a
> release tagged `v1.0.0` with the `.dmg` attached must exist first.

## Updating

Rebuild with `./package.sh`, upload the new `.dmg` to a GitHub release on the
`kyiri-clip` repo, then bump `version` + `sha256` in `Casks/kyiri-clip.rb`.
