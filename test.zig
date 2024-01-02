const zod = @import("zod.zig");
const std = @import("std");

test "validate" {
    try std.testing.expectEqualStrings("google.com", zod.validateURL("https://google.com"));
    try std.testing.expectEqualStrings("google.com", zod.validateURL("google.com"));
    try std.testing.expectEqualStrings("google.com", zod.validateURL("http://google.com:8080"));
    try std.testing.expectEqualStrings("google.com", zod.validateURL("http://google.com:8080/a"));
    try std.testing.expectEqualStrings("google.com", zod.validateURL("google.com/"));
    try std.testing.expectEqualStrings("google.com", zod.validateURL("http://google.com:1111/ax/xa/"));
}
