# Markup: A Swift DSL for generating HTML.

## ⚠️ Not intended for general use

This repository is public for convenience, not as a released library.

It exists to serve a small number of my own projects. It has no versioning, no release process, no changelog, and no stability guarantees. `main` is the only branch, it moves whenever I need something, and breaking changes land without notice or deprecation.

**Please don't depend on this.** Use [Elementary](https://github.com/sliemeobn/elementary) instead — it's the library that inspired this one, it covers the same ground, and it's properly released and maintained. If you found your way here looking for a Swift HTML DSL, Elementary is almost certainly what you want.

I'm not accepting issues or pull requests, and I won't be responding to feature requests. This isn't unfriendliness — I just don't have the capacity to support external users, and I'd rather say so plainly than leave anyone guessing.

## If you're using it anyway

Pin to an exact revision. Never track `main`.

```swift
.package(
    url: "https://github.com/sonaelabs/markup.git",
    revision: "<commit-sha>"
)
```

## Requirements

- Swift 6.3+

## Acknowledgements

The design of this package is heavily inspired by [Elementary](https://github.com/sliemeobn/elementary) by Simon Leeb. Markup exists only because I wanted to explore some ideas of my own and needed specific things for my projects — not because Elementary was lacking.

## License

[MIT](LICENSE) — you're free to use, copy, and modify this.
The license grants you rights; it doesn't come with support.
