const std = @import("std");
const logger = @import("logger.zig");
const builtin = @import("builtin");

pub fn main() void {
    logger.log("info", "Welcome to DDoS.zig v1.00 (L7)");
    const url = "a";

    logger.log("target", "{}", .{url});
}
