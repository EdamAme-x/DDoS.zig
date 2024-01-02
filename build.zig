const std = @import("std");

pub fn build(b: *std.Build) void {
    const exe = b.addExecutable(.{
        .name = "DDoS",
        .root_source_file = .{ .path = "DDoS.zig" },
    });

    b.installArtifact(exe);
}
