## :lizard: :calendar: **zig datetime**

[![CI][ci-shd]][ci-url]
[![CD][cd-shd]][cd-url]
[![DC][dc-shd]][dc-url]
[![CC][cc-shd]][cc-url]
[![LC][lc-shd]][lc-url]

### Datetime module for Zig with an API similar to [Python's Arrow](https://github.com/arrow-py/arrow).

> NOTE: This does not implement DST.

### :rocket: Usage

1. Add `datetime` as a dependency in your `build.zig.zon`.

    <details>

    <summary><code>build.zig.zon</code> example</summary>

    ```zig
    .{
        .name = "<name_of_your_package>",
        .version = "<version_of_your_package>",
        .dependencies = .{
            .datetime = .{
                .url = "https://github.com/frmdstryr/zig-datetime/archive/<git_tag_or_commit_hash>.tar.gz",
                .hash = "<package_hash>",
            },
        },
    }
    ```

    Set `<package_hash>` to `12200000000000000000000000000000000000000000000000000000000000000000`, and Zig will provide the correct found value in an error message.

    </details>

2. Add `datetime` as a module in your `build.zig`.

    <details>

    <summary><code>build.zig</code> example</summary>

    ```zig
    const datetime = b.dependency("datetime", .{});
    exe.addModule("datetime", datetime.module("datetime"));
    ```

    </details>

### :eyes: Example

```zig
const allocator = std.heap.page_allocator;
const date = try Date.create(2019, 12, 25);
const next_year = date.shiftDays(7);
assert(next_year.year == 2020);
assert(next_year.month == 1);
assert(next_year.day == 1);

// In UTC
const now = Datetime.now();
const now_str = try now.formatHttp(allocator);
defer allocator.free(now_str);
std.debug.warn("The time is now: {}\n", .{now_str});
// The time is now: Fri, 20 Dec 2019 22:03:02 UTC
```

<!-- MARKDOWN LINKS -->

[ci-shd]: https://img.shields.io/github/actions/workflow/status/frmdstryr/zig-datetime/ci.yaml?branch=master&style=for-the-badge&logo=github&label=CI&labelColor=black
[ci-url]: https://github.com/frmdstryr/zig-datetime/blob/master/.github/workflows/ci.yaml
[cd-shd]: https://img.shields.io/github/actions/workflow/status/frmdstryr/zig-datetime/cd.yaml?branch=master&style=for-the-badge&logo=github&label=CD&labelColor=black
[cd-url]: https://github.com/frmdstryr/zig-datetime/blob/master/.github/workflows/cd.yaml
[dc-shd]: https://img.shields.io/badge/click-F6A516?style=for-the-badge&logo=zig&logoColor=F6A516&label=docs&labelColor=black
[dc-url]: https://frmdstryr.github.io/zig-datetime
[cc-shd]: https://img.shields.io/codecov/c/github/frmdstryr/zig-datetime?style=for-the-badge&labelColor=black
[cc-url]: https://app.codecov.io/gh/frmdstryr/zig-datetime
[lc-shd]: https://img.shields.io/github/license/frmdstryr/zig-datetime.svg?style=for-the-badge&labelColor=black
[lc-url]: https://github.com/frmdstryr/zig-datetime/blob/master/LICENSE.md
