use crate::messages::*;
use rinf::debug_print;

pub async fn calculate_precious_data() {
    let receiver = MyPreciousData::get_dart_signal_receiver(); // GENERATED
    while let Some(dart_signal) = receiver.recv().await {
        use std::time::Instant;

        let my_precious_data = dart_signal.message;

        let new_numbers: Vec<i32> = my_precious_data
            .input_numbers
            .into_iter()
            .map(|x| x + 1)
            .collect();
        let new_string = my_precious_data.input_string.to_uppercase();

        // debug_print!("{new_numbers:?}");
        // debug_print!("{new_string} ----");

        let now = Instant::now();
        let mut sum: i64 = 0;
        for n in 0..1000 {
            sum += n;
        }
        debug_print!(
            "🦀 Rust: The final sum: {sum}. Elapsed: {:.2?}",
            now.elapsed()
        );
    }
}
