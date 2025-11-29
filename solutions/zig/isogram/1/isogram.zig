pub fn isIsogram(str: []const u8) bool {
    var counts = [_]u32{0} ** 26;
    const diff = 'a' - 'A';
    for (str) |c| {
        var v = c;
        if (c >= 'A' and c <= 'Z') {
            v += diff;
        }
        if(v >= 'a' and v <= 'z') {
            counts[v-'a'] += 1;
            if (counts[v-'a'] > 1) {
                return false;
            }
        }
    }
    return true;
}
