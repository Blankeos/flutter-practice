# frb_basic

### Notes

1. Refer to [FRB's Quickstart](https://cjycode.com/flutter_rust_bridge/quickstart) for everything. It's useful.
   - But basically I installed `flutter_rust_bridge_codegen` then I can use some commands like `integrate` or `create`. (very succinct)
2. How Rust-Flutter communicates

- You write code in Rust in `rust/src/api`, use the macros for frb.
- Then you run the `flutter_rust_bridge_codegen generate --watch` and it generates code in: `lib/src/rust/*`

3. One notable thing is the `flutter_rust_bridge.yaml` where you configure the:

- rust root - what you write in rust.

4. Another notable thing, notice in `main.dart` that before running the app. We initialize the rust background process basically.

```dart
Future<void> main() async {
  await RustLib.init();
  runApp(const MyApp());
}
```

5. The build will be in macos `./build/macos/Build/Products/Release/frb_basic.app` - I used justfile to note this lol.
