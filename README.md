# homebrew-tap

Homebrew formulae for [@skyoo2003](https://github.com/skyoo2003)'s projects.

```sh
brew tap skyoo2003/tap
```

| Formula | Description |
| --- | --- |
| [`acor`](https://github.com/skyoo2003/acor) | Aho-Corasick automaton working On Redis/Valkey |
| [`devcloud`](https://github.com/skyoo2003/devcloud) | Local development companion for cloud-native apps |
| [`kvs`](https://github.com/skyoo2003/kvs) | A key-value store as a distributed server or a Go module |

Install without tapping first:

```sh
brew install skyoo2003/tap/acor
```

macOS and Linux, x86_64 and arm64, from the pre-built binaries attached to each
GitHub release.

## Maintenance

Every file under `Formula/` is generated and committed by GoReleaser from the
source repository's release workflow — edit `brews` in that repository's
`.goreleaser.yaml`, not the formula here.
