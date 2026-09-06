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
| [`weft`](https://github.com/skyoo2003/weft) | Keyword, vector and graph search engine whose default operation is fusion |

Install without tapping first:

```sh
brew install skyoo2003/tap/acor
```

macOS and Linux, x86_64 and arm64, from the pre-built binaries attached to each
GitHub release.

## Maintenance

Every file under `Formula/` and `Casks/` is generated and committed by
GoReleaser from the source repository's release workflow — edit `brews` or
`homebrew_casks` in that repository's `.goreleaser.yaml`, not the file here.

`Casks/weft.rb` is the one exception, and only until weft's next tag: it was
written by hand for v0.1.0, which was released before this tap carried weft.
Its own header says so, and GoReleaser overwrites it from that next tag.
