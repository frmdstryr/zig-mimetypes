const std = @import("std");

pub const mimetypes = @import("mimetypes.zig");

comptime {
    std.testing.refAllDecls(@This());
}
