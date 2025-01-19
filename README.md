# Zig Datetime

[![actions](https://github.com/frmdstryr/zig-datetime/actions/workflows/ci.yml/badge.svg)](https://github.com/frmdstryr/zig-datetime/actions)
[![codecov](https://codecov.io/gh/frmdstryr/zig-datetime/branch/master/graph/badge.svg)](https://codecov.io/gh/frmdstryr/zig-datetime)

A datetime module for Zig with an api similar to python's Arrow.

> NOTE: This does not implement DST.

```zig

const allocator = std.heap.page_allocator;
const date = try Date.create(2019, 12, 25);
const next_year = date.shiftDays(7);
assert(next_year.year == 2020);
assert(next_year.month == 1);
assert(next_year.day == 1);

// In GMT
const now = Datetime.now();
const now_str = try now.formatHttp(allocator);
defer allocator.free(now_str);
std.debug.warn("The time is now: {}\n", .{now_str});
// The time is now: Sun, 19 Jan 2025 06:09:35 GMT


```
