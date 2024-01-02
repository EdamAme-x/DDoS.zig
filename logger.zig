const std = @import("std");

fn switchColor(level: []const u8) []const u8 {
    if (std.mem.eql(u8, level, "info")) {
        return "\x1b[34m";
    } else if (std.mem.eql(u8, level, "error")) {
        return "\x1b[31m";
    } else if (std.mem.eql(u8, level, "warn")) {
        return "\x1b[32m";
    } else {
        return "\x1b[0m";
    }
}

pub fn log(level: []const u8, format: []const u8) void {
    const color = switchColor(level);

    const upperLevel: []const u8 = level;

    std.debug.print("{s}[{s}]{s} :: {s}{s}\n", .{ color, upperLevel, "\x1b[0m", format });
}
