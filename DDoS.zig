const std = @import("std");
const logger = @import("logger.zig");
const builtin = @import("builtin");
const zod = @import("zod.zig");

pub fn main() void {
    logger.log("info", "Welcome to DDoS.zig v1.00 (L7)");
    const url = "https://a.com:80/asass";

    logger.log("target", zod.validateURL(url));
}
