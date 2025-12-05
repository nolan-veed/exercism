pub fn isPangram(str: []const u8) bool {
    var counts = [_]u32{0} ** 26;
    const diff = 'a' - 'A';
    for (str) |c| {
        var v = c;
        if (v >= 'A' and v <= 'Z') {
            v += diff;
        }
        if (v >= 'a' and v <= 'z') {
            counts[v - 'a'] += 1;
        }
    }
    for (counts) |count| {
        if (count == 0)
            return false;
    }
    return true;
}
