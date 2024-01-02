const std = @import("std");
const logger = @import("logger.zig");
const builtin = @import("builtin");
const zod = @import("zod.zig");

pub fn main() !void {
    logger.log("info", "Welcome to DDoS.zig v1.00 (L7)");
    const stdin = std.io.getStdIn().reader();

    var inputBuffer: [101]u8 = undefined;
    std.debug.print("[TARGET URL]: ", .{});
    const t = try stdin.read(&inputBuffer);
    std.debug.print("\n", .{});

    const url = inputBuffer[0..t];

    logger.log("target", zod.validateURL(url));
}
