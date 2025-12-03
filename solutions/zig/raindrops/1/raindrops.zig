const std = @import("std");

pub fn convert(buffer: []u8, n: u32) []const u8 {
    var i: usize = 0;
    if (n % 3 == 0) {
        std.mem.copyForwards(u8, buffer[i..], "Pling");
        i += 5;
    }
    if (n % 5 == 0) {
        std.mem.copyForwards(u8, buffer[i..], "Plang");
        i += 5;
    }
    if (n % 7 == 0) {
        std.mem.copyForwards(u8, buffer[i..], "Plong");
        i += 5;
    }
    if (i == 0) {
        const buf = std.fmt.bufPrint(buffer, "{d}", .{n}) catch unreachable;
        i = buf.len;
    }
    return buffer[0 .. i];
}
