const std = @import("std");
const mem = std.mem;

pub fn toRna(allocator: mem.Allocator, dna: []const u8) mem.Allocator.Error![]const u8 {
    const rna = try allocator.alloc(u8, dna.len);
    std.mem.copyForwards(u8, rna, dna);
    for(rna)|*c| {
        switch(c.*) {
            'G' => c.* = 'C',
            'C' => c.* = 'G',
            'T' => c.* = 'A',
            'A' => c.* = 'U',
            else => {}
        }
    }
    return rna;
}
