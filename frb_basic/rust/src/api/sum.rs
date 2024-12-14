use rand::prelude::*;
use std::time::Instant;

#[flutter_rust_bridge::frb(sync)] // Synchronous mode for simplicity of the demo
pub fn sum() -> (i64, i64, f64) {
    let now = Instant::now();

    let mut som: i64 = 0;
    for i in 0..1_000_000 {
        som += i
    }

    let mut rng = rand::thread_rng();
    let y: f64 = rng.gen(); // generates a float between 0 and 1

    let elapsed = now.elapsed().as_micros() as i64;
    println!("🦀 Final sum: {som}. Elapsed: {:2?}", elapsed);
    (som, elapsed, y)
}

#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    // Default utilities - feel free to customize
    flutter_rust_bridge::setup_default_user_utils();
}
