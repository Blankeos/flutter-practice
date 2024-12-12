# 🐣 Flutter-Practice

🐔 A monorepo of Flutter projects for practice from a bunch of tutorials I've watched.

I completely believe in "Learn-by-doing" so the more projects I try to copy, the better experience I get. (Obviously with a sprinkle of effort).

### ✨ Apps made so far:

> Click on the folder for each app to see a demo gif of each.

1. **Salon Booking** - teaches about Stacks and a lot of positioning, sizing, stuff. `MediaQuery.of(context).size.x` was pretty useful.
2. **Calculator App** - Made this on my own, used a math parser library, created the UI from scratch, and figured out how to structure and organize folders in a Flutter project for faster development like I do with React (for styles especially).
3. **WhatsApp UI** - teaches about ListTiles, Tabs, TabViews, and a bunch of cool premade Material stuff.
4. **Pokedex** - teaches about fetching from APIs using `http` and learned Grids.
5. **Rinf Basic** - just some experiments with the [`rinf`](https://rinf.cunarist.com/) (Rust in Flutter) library.

Other Flutter apps I made not on this repo:

- flutter-firebase (NetNinja)
- travel_onboarding

### Notes

- Install using [`fvm`](https://fvm.app/) - Like fnm or nvm, but for Flutter.
- `fvm global <version>` to install a specific version globally, so no need to prefix `fvm` everytime.
- `flutter doctor` to check installation. Install the rest if missing. Usually has instructions.
- `flutter pub get` to install packages. Like `bun install`
- `flutter run` to run the app. It runs `flutter pub get` as well. This will usually show me a list of platforms.
- `flutter create --platforms=macos .` - to add a platform to an existing flutter project.
- `flutter build` to build the app into an apk, ipa, or executable. Optionally you can pass a specific platform to build for.
