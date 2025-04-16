const std = @import("std");
const time = std.time;
const datetime = @import("datetime.zig");

pub const DstZones = enum(u8) {
    no_dst,
    eest,
    adt,
    acdt,
    lhst,
    nzdt,
    clst,
    egypt_dst,
    idt,
    easst,
};

pub fn getDstZoneData(year: u16, dst_zone: DstZones) [3]i64 {
    switch (dst_zone) {
        .eest => {
            return getEESTData(year);
        },
        .adt => {
            return getADTData(year);
        },
        .acdt => {
            return getACDTData(year);
        },
        .lhst => {
            return getLHSTData(year);
        },
        .nzdt => {
            return getNZDTData(year);
        },
        .clst => {
            return getCLSTData(year);
        },
        .egypt_dst => {
            return getEgyptDstData(year);
        },
        .idt => {
            return getIDTData(year);
        },
        .easst => {
            return getEASSTData(year);
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

pub fn getEESTData(year: u16) [3]i64 {
    const start = lastWeekdayOfMonth(year, @intFromEnum(time.epoch.Month.mar), .sunday);
    const end = lastWeekdayOfMonth(year, @intFromEnum(time.epoch.Month.oct), .sunday);
    return [3]i64{ start, end, 60 };
}

pub fn getADTData(year: u16) [3]i64 {
    const start = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.mar), .sunday, .second);
    const end = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.nov), .sunday, .first);
    return [3]i64{ start, end, 60 };
}

pub fn getACDTData(year: u16) [3]i64 {
    const start = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.oct), .sunday, .first);
    const end = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.apr), .sunday, .first);
    return [3]i64{ start, end, 60 };
}

pub fn getEASSTData(year: u16) [3]i64 {
    const start = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.apr), .saturday, .first);
    const end = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.oct), .saturday, .first);
    return [3]i64{ start, end, 60 };
}

pub fn getLHSTData(year: u16) [3]i64 {
    const start = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.oct), .sunday, .first);
    const end = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.apr), .sunday, .first);
    return [3]i64{ start, end, 30 };
}

pub fn getNZDTData(year: u16) [3]i64 {
    const start = lastWeekdayOfMonth(year, @intFromEnum(time.epoch.Month.sep), .sunday);
    const end = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.apr), .sunday, .first);
    return [3]i64{ start, end, 60 };
}

pub fn getCLSTData(year: u16) [3]i64 {
    const start = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.sep), .saturday, .first);
    const end = nthOccurrenceOfTheMonth(year, @intFromEnum(time.epoch.Month.apr), .saturday, .first);
    return [3]i64{ start, end, 60 };
}

pub fn getEgyptDstData(year: u16) [3]i64 {
    const start = lastWeekdayOfMonth(year, @intFromEnum(time.epoch.Month.apr), .friday);
    const end = lastWeekdayOfMonth(year, @intFromEnum(time.epoch.Month.oct), .thursday);
    return [3]i64{ start, end, 60 };
}

pub fn getIDTData(year: u16) [3]i64 {
    var start = lastWeekdayOfMonth(year, @intFromEnum(time.epoch.Month.mar), .sunday);
    start -= 2 * 24 * 3600; //Friday before last Sunday in March at 02:00
    const end = lastWeekdayOfMonth(year, @intFromEnum(time.epoch.Month.oct), .sunday);
    return [3]i64{ start, end, 60 };
}

fn nthOccurrenceOfTheMonth(year: u32, month: u16, day: Weekdays, occurrence: Occurrence) i64 {
    const occurrence_as_int = @intFromEnum(occurrence);
    const year_as_seconds = 31536000 * (year - 1970);
    var i: u16 = 1;
    var total_days_passed_in_year: i64 = 0;
    while (i < month) : (i += 1) {
        total_days_passed_in_year += datetime.daysInMonth(year, i);
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
        total_days_passed_in_year += datetime.daysInMonth(year, i);
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

fn getDayNameFromTimestamp(timestamp: i64) Weekdays {
    const hours = @divFloor(timestamp, 3600);
    const days = @divFloor(hours, 24);
    const offset = @mod(days, 7);
    return Weekdays.fromNumber(offset);
}

test "get-europe-dst-data" {
    const dst_data = getDstZoneData(2025, .eest);
    try std.testing.expectEqual(1743292800, dst_data[0]);
    try std.testing.expectEqual(1761436800, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}

test "get-us-dst-data" {
    const dst_data = getDstZoneData(2025, .adt);
    try std.testing.expectEqual(1741478400, dst_data[0]);
    try std.testing.expectEqual(1762041600, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}

test "get-australia-dst-data" {
    const dst_data = getDstZoneData(2025, .acdt);
    try std.testing.expectEqual(1759622400, dst_data[0]);
    try std.testing.expectEqual(1743897600, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}

test "get-lord-howe-dst-data" {
    const dst_data = getDstZoneData(2025, .lhst);
    try std.testing.expectEqual(1759622400, dst_data[0]);
    try std.testing.expectEqual(1743897600, dst_data[1]);
    try std.testing.expectEqual(30, dst_data[2]);
}

test "get-new-zeland-dst-data" {
    const dst_data = getDstZoneData(2025, .nzdt);
    try std.testing.expectEqual(1759017600, dst_data[0]);
    try std.testing.expectEqual(1743897600, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}

test "get-chile-dst-data" {
    const dst_data = getDstZoneData(2025, .clst);
    try std.testing.expectEqual(1757116800, dst_data[0]);
    try std.testing.expectEqual(1743811200, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}

test "get-egypt-dst-data" {
    const dst_data = getDstZoneData(2025, .egypt_dst);
    try std.testing.expectEqual(1745539200, dst_data[0]);
    try std.testing.expectEqual(1761782400, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}

test "get-israel-dst-data" {
    const dst_data = getDstZoneData(2025, .idt);
    try std.testing.expectEqual(1743120000, dst_data[0]);
    try std.testing.expectEqual(1761436800, dst_data[1]);
    try std.testing.expectEqual(60, dst_data[2]);
}
