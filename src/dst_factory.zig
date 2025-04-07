const std = @import("std");
const time = std.time;

pub fn getDstZoneData(dstSettting: @Type(.enum_literal)) [3]i64 {
    const year = 2025; //TODO I should calculate the current year and pass it to the function
    switch (dstSettting) {
        .europe_dst => {
            return getEuropeDstData(year);
        },
        .us_dst => {
            return getUSDstData(year);
        },
        .australia_dst => {
            return getAustraliaDstData(year);
        },
        .lord_howe_dst => {
            return getLordHoweDstData(year);
        },
        .new_zeland_dst => {
            return getNewZelandDstData(year);
        },
        .chile_dst => {
            return getChileDstData(year);
        },
        .egypt_dst => {
            return getEgyptDstData(year);
        },
        .israel_dst => {
            return getIsraelDstData(year);
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

const Occurrence = enum(u8) {
    first = 1,
    second,
    third,
    fourth,
    fifth,
};

pub fn getEuropeDstData(year: u16) [3]i64 {
    const start = lastWeekdayOfMonth(year, @intFromEnum(time.epoch.Month.mar), Weekdays.sunday);
    const end = lastWeekdayOfMonth(year, @intFromEnum(time.epoch.Month.oct), Weekdays.sunday);
    return [3]i64{ start, end, 60 };
}

pub fn getUSDstData(year: u16) [3]i64 {
    const start = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.mar), Weekdays.sunday, Occurrence.second);
    const end = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.nov), Weekdays.sunday, Occurrence.first);
    return [3]i64{ start, end, 60 };
}

pub fn getAustraliaDstData(year: u16) [3]i64 {
    const start = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.oct), Weekdays.sunday, Occurrence.first);
    const end = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.apr), Weekdays.sunday, Occurrence.first);
    return [3]i64{ start, end, 60 };
}

pub fn getLordHoweDstData(year: u16) [3]i64 {
    const start = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.oct), Weekdays.sunday, Occurrence.first);
    const end = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.apr), Weekdays.sunday, Occurrence.first);
    return [3]i64{ start, end, 30 };
}

pub fn getNewZelandDstData(year: u16) [3]i64 {
    const start = lastWeekdayOfMonth(year, @intFromEnum(time.epoch.Month.sep), Weekdays.sunday);
    const end = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.apr), Weekdays.sunday, Occurrence.first);
    return [3]i64{ start, end, 60 };
}

pub fn getChileDstData(year: u16) [3]i64 {
    const start = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.sep), Weekdays.saturday, Occurrence.first);
    const end = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.apr), Weekdays.saturday, Occurrence.first);
    return [3]i64{ start, end, 60 };
}

pub fn getEgyptDstData(year: u16) [3]i64 {
    const start = lastWeekdayOfMonth(year, @intFromEnum(time.epoch.Month.apr), Weekdays.friday);
    const end = lastWeekdayOfMonth(year, @intFromEnum(time.epoch.Month.oct), Weekdays.thursday);
    return [3]i64{ start, end, 60 };
}

pub fn getIsraelDstData(year: u16) [3]i64 {
    var start = lastWeekdayOfMonth(year, @intFromEnum(time.epoch.Month.mar), Weekdays.sunday);
    start -= 2 * 24 * 3600; //Friday before last Sunday in March at 02:00
    const end = lastWeekdayOfMonth(year, @intFromEnum(time.epoch.Month.oct), Weekdays.sunday);
    return [3]i64{ start, end, 60 };
}

fn nthOccurrenceOfTheMonth(year: u32, month: u16, day: Weekdays, occurrence: Occurrence) i64 {
    const occurrence_as_int = @intFromEnum(occurrence);
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

    leap_added += (7 * @as(i64, @intCast(occurrence_as_int))) * 24 * 3600;

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

test "get us dst data" {
    const dst_data = getDstZoneData(.us_dst);
    try std.testing.expectEqual(1741478400, dst_data[0]);
    try std.testing.expectEqual(1762041600, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}

test "get australia dst data" {
    const dst_data = getDstZoneData(.australia_dst);
    try std.testing.expectEqual(1759622400, dst_data[0]);
    try std.testing.expectEqual(1743897600, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}

test "get lord howe dst data" {
    const dst_data = getDstZoneData(.lord_howe_dst);
    try std.testing.expectEqual(1759622400, dst_data[0]);
    try std.testing.expectEqual(1743897600, dst_data[1]);
    try std.testing.expectEqual(30, dst_data[2]);
}

test "get new zeland dst data" {
    const dst_data = getDstZoneData(.new_zeland_dst);
    try std.testing.expectEqual(1759017600, dst_data[0]);
    try std.testing.expectEqual(1743897600, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}

test "get chile dst data" {
    const dst_data = getDstZoneData(.chile_dst);
    try std.testing.expectEqual(1757116800, dst_data[0]);
    try std.testing.expectEqual(1743811200, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}

test "get egypt dst data" {
    const dst_data = getDstZoneData(.egypt_dst);
    try std.testing.expectEqual(1745539200, dst_data[0]);
    try std.testing.expectEqual(1761782400, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}

test "get israel dst data" {
    const dst_data = getDstZoneData(.israel_dst);
    try std.testing.expectEqual(1743120000, dst_data[0]);
    try std.testing.expectEqual(1761436800, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}
