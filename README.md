# Zig Datetime

[![actions](https://github.com/frmdstryr/zig-datetime/actions/workflows/ci.yml/badge.svg)](https://github.com/frmdstryr/zig-datetime/actions)
[![codecov](https://codecov.io/gh/frmdstryr/zig-datetime/branch/master/graph/badge.svg)](https://codecov.io/gh/frmdstryr/zig-datetime)


A datetime module for Zig with an api similar to python's Arrow.

> [!NOTE]
> DST is now implemeted to the library. Some timezones that relying on islamic calendar for DST might not work yet. It is also possible that we might have skipped some timezones by mistake because there are a lot of timezones.

> [!IMPORTANT]
> With DST implementation, the `shiftTimezone` method changed and now taking timezone argument passed by value contrary to before that it was passed by pointer.

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
