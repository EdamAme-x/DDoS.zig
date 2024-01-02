const std = @import("std");

pub fn log(
    comptime level: []const u8,
    comptime format: []const u8,
    args: anytype,
) void {
    var color: *const [0]u8 = undefined;

    if (std.mem.eql(u8, level, "error")) {
        color = "\x1b[31m";
    } else if (std.mem.eql(u8, level, "warn")) {
        color = "\x1b[33m";
    } else if (std.mem.eql(u8, level, "info")) {
        color = "\x1b[34m";
    } else if (std.mem.eql(u8, level, "debug")) {
        color = "\x1b[32m";
    } else {
        color = "\x1b[0m";
    }

    std.debug.print(color ++ "[" ++ level.upper() ++ "]\x1b[0m" ++ " :: " ++ " :: " ++ format ++ "\x1b[0m\n", args);
}
