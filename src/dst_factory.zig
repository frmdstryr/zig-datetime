const std = @import("std");

pub fn getDstZoneData(dstSettting: @Type(.enum_literal)) [3]i64 {
    const year = 2025; //TODO I should calculate the current year and pass it to the function
    switch (dstSettting) {
        .europe_dst => {
            return getEuropeDstData(year);
        },
        .us_dst => {
            return getCubaDstData(year);
        },
        else => {
            return [3]i64{ 0, 0, 0 };
        },
    }
}

const Weekdays = enum {
    thursday, // because 1970-01-01 is a Thursday
    friday,
    saturday,
    sunday,
    monday,
    tuesday,
    wednesday,

    pub fn toNumber(self: Weekdays) u3 {
        return @intFromEnum(self);
    }

    pub fn fromNumber(number: i64) Weekdays {
        return @enumFromInt(number);
    }
};

pub fn getEuropeDstData(year: u16) [3]i64 {
    const start = lastWeekdayOfMonth(year, 3, Weekdays.sunday);
    const end = lastWeekdayOfMonth(year, 10, Weekdays.sunday);
    return [3]i64{ start, end, 60 };
}

pub fn getCubaDstData(year: u16) [3]i64 {
    const start = nthOccurenceOfTheMonth(year, 3, Weekdays.sunday, 2);
    const end = nthOccurenceOfTheMonth(year, 11, Weekdays.sunday, 1);
    return [3]i64{ start, end, 60 };
}

fn nthOccurenceOfTheMonth(year: u32, month: u16, day: Weekdays, occurence: u8) i64 {
    const year_as_seconds = 31536000 * (year - 1970);
    var i: u16 = 1;
    var total_days_passed_in_year: i64 = 0;
    while (i < month) : (i += 1) {
        total_days_passed_in_year += getDaysInMonth(i, year);
    }

    const passed_days_in_seconds: i64 = total_days_passed_in_year * 24 * 3600;
    const total_seconds = year_as_seconds + passed_days_in_seconds;
    var leap_added = total_seconds + (@divFloor((year - 1970), 4) * 24 * 3600);

    var last_day_of_the_month = getDayNameFromTimestamp(leap_added);

    while (last_day_of_the_month != day) {
        leap_added -= 24 * 3600;
        last_day_of_the_month = getDayNameFromTimestamp(leap_added);
    }

    leap_added += (7 * @as(i64, @intCast(occurence))) * 24 * 3600;

    return leap_added;
}

fn lastWeekdayOfMonth(year: u32, month: u16, day: Weekdays) i64 {
    var year_as_seconds = 31536000 * (year - 1970);
    year_as_seconds -= 1 * 24 * 3600; //because 31536000 1 jan we want 31 dec
    var i: u16 = 1;
    var total_days_passed_in_year: i64 = 0;
    while (i <= month) : (i += 1) {
        total_days_passed_in_year += getDaysInMonth(i, year);
    }

    const passed_days_in_seconds: i64 = total_days_passed_in_year * 24 * 3600;
    const total_seconds = year_as_seconds + passed_days_in_seconds;
    var leap_added = total_seconds + (@divFloor((year - 1970), 4) * 24 * 3600);

    var last_day_of_the_month = getDayNameFromTimestamp(leap_added);

    while (last_day_of_the_month != day) {
        leap_added -= 24 * 3600;
        last_day_of_the_month = getDayNameFromTimestamp(leap_added);
    }

    return leap_added;
}

fn getDaysInMonth(month: u16, year: u32) u8 {
    const days_in_month = [_]u8{ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };

    if (month == 2 and isLeapYear(year)) {
        return 29;
    }

    return days_in_month[month - 1];
}

fn getDayNameFromTimestamp(timestamp: i64) Weekdays {
    const hours = @divFloor(timestamp, 3600);
    const days = @divFloor(hours, 24);
    const offset = @mod(days, 7);
    return Weekdays.fromNumber(offset);
}

fn isLeapYear(year: u32) bool {
    return (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0);
}

test "get europe dst data" {
    const dst_data = getDstZoneData(.europe_dst);
    try std.testing.expectEqual(1743292800, dst_data[0]);
    try std.testing.expectEqual(1761436800, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}

test "get cuba dst data" {
    const dst_data = getDstZoneData(.us_dst);
    try std.testing.expectEqual(1741478400, dst_data[0]);
    try std.testing.expectEqual(1762041600, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}
