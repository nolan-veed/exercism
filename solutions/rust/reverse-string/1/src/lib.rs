use unicode_reverse::reverse_grapheme_clusters_in_place;

pub fn reverse(input: &str) -> String {
    // todo!("Write a function to reverse {input}");
    // return input.chars().rev().collect()
    let mut s = input.to_string();
    reverse_grapheme_clusters_in_place(&mut s);
    return s;
}
