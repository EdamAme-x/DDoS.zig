const std = @import("std");
const logger = @import("logger.zig");
const builtin = @import("builtin");

pub fn main() void {
    logger.log("info", "Welcome to DDoS.zig v{s} (L7)", .{builtin.zig_version});
    const url = "a";

    logger.log("target", "{}", .{url});
}
