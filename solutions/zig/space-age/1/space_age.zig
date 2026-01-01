pub const Planet = enum {
    mercury,
    venus,
    earth,
    mars,
    jupiter,
    saturn,
    uranus,
    neptune,

    pub fn age(self: Planet, seconds: usize) f64 {
        const seconds_f64: f64 = @floatFromInt(seconds);
        const age_out: f64 = switch (self) {
            Planet.mercury => seconds_f64 / 0.2408467,
            Planet.venus => seconds_f64 / 0.61519726,
            Planet.earth => seconds_f64 / 1.0,
            Planet.mars => seconds_f64 / 1.8808158,
            Planet.jupiter => seconds_f64 / 11.862615,
            Planet.saturn => seconds_f64 / 29.447498,
            Planet.uranus => seconds_f64 / 84.016846,
            Planet.neptune => seconds_f64 / 164.79132,
        };
        return age_out / 31_557_600;
    }
};
