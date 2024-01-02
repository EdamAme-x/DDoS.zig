const std = @import("std");
const allocator = std.heap.page_allocator;

pub fn validateURL(value: []const u8) []const u8 {
    var result: []const u8 = value;

    if (std.mem.startsWith(u8, result, "https://")) {
        result = result[8..];
    } else if (std.mem.startsWith(u8, result, "http://")) {
        result = result[7..];
    } else if (std.mem.startsWith(u8, result, "://")) {
        result = result[2..];
    }

    if (std.mem.indexOf(u8, result, ":")) |colon| {
        result = result[0..colon];
    }

    if (std.mem.indexOf(u8, result, "/")) |slash| {
        result = result[0..slash];
    }

    return result;
}
// https://a.com => a.com
// http://b.com => b.com
// abc.com:80 => abc.com
