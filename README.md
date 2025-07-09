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
6. **FRB Basic** - experiments with flutter_rust_bridge, I prefer this over rinf. Much2x simpler. Looks like a basic rust function besides the macros. For Rinf, there are specific get_dart_signal stuff or whatever that require you to understand rinf knowledge. So I prefer frb.

Other Flutter apps I made not on this repo:

- flutter-firebase (NetNinja)
- travel_onboarding

### Notes

- Install using [`fvm`](https://fvm.app/) - Like fnm or nvm, but for Flutter.
- `fvm global <version>` to install a specific version globally, so no need to prefix `fvm` everytime.
- `flutter doctor` to check installation. Install the rest if missing. Usually has instructions.
- `flutter pub get` to install packages. Like `bun install`
- `flutter run` to run the app. It runs `flutter pub get` as well. This will usually show me a list of platforms.
- `flutter run -d <platform>` to run on a specific platform, where `<platform>` could be `chrome`, `macos`, `ios`, `android` etc. For example: `flutter run -d chrome` to run on web.
- `flutter create --platforms=macos .` - to add a platform to an existing flutter project.
- `flutter create ---empty` - to create an empty flutter project. (usually use VSCode for this, but I don't use VSCode anymore, so I use this a lot).
- `flutter create <appname>` to create a new flutter project with the package name `<appname>`.
- `flutter build` to build the app into an apk, ipa, or executable. Optionally you can pass a specific platform to build for.
- `flutter devices` lists devices (macOS, chrome, your iphone, even wireless ones).

If you want hot reload (like it presses `r` automatically for you).

- `dashmon` - Install this via `flutter pub global activate dashmon` and replace essentially flutter run with dashmon

If you want to run on an iOS simulator.

- **Configure Xcode Command Line Tools**:
  - Open Xcode and navigate to `Xcode` > `Settings` (or `Preferences` on older versions) > `Locations`.
  - Ensure `Command Line Tools` is set to your installed Xcode version (e.g., `Xcode 16.0`).
- **Launch a Simulator**:
  - In Xcode, go to `Xcode` > `Open Developer Tool` > `Simulator`.
  - To manage or add new simulators, navigate to `Window` > `Devices and Simulators` (`Shift + Command + 2`) and press the `+` button.
- **Run Your App**:
  - Once a simulator is running, execute the following command in your terminal: `flutter run -d <device-id>`.
  - (You can find available device IDs by running `flutter devices`).

If you want to run on your iPhone

- **Connect Your Device**: Connect your iPhone to your Mac using a USB cable.
- **Open Xcode Project**: In your Flutter project directory, open the iOS workspace by running `open ios/Runner.xcworkspace`.
- **Select Your Device**: In Xcode, select your connected iPhone from the target dropdown menu (usually at the top-center of the window).
- **Trust Your Mac**: On your iPhone, confirm to "Trust This Computer" when prompted.
- **Enable Developer Mode**: On your iPhone, go to `Settings` > `Privacy & Security` and enable `Developer Mode`. You may need to restart your device.
- **Configure Signing & Capabilities**:
  - In Xcode, select the `Runner` project in the left sidebar, then navigate to the `Signing & Capabilities` tab.
  - Add a `Team` (e.g., your personal iCloud account or an organizational account).
  - Optionally, verify your device setup in `Window` > `Devices and Simulators` (`Shift + Command + 2`).
- **Perform Initial Run via Xcode**:
  - Run the app directly from Xcode for the first time by clicking the `Run` button (triangle icon). You may be prompted to enter your Mac's password.
- **Subsequent Runs**: After the first successful run from Xcode, you can use `flutter run` from your terminal for all subsequent runs.
- **Troubleshoot "Untrusted Developer"**:
  - If you encounter an "Untrusted Developer" message on your iPhone, go to `Settings` > `General` > `VPN & Device Management`.
  - Under the "Developer App" section, tap on your developer app entry and then tap "Trust [Your Developer Name]".
