# coffee_ui

Followed a tutorial from [Mitch Koko](https://youtube.com/watch?v=e8avvPPhyVk).

Learned:

- [x] `theme: ThemeData(brightness: Brightness.dark)` for dark mode.
- [x] `BottomNavigationBar(...)`
- [x] `TextField`
  - [x] InputBorder decorations
- [x] `Expanded` being used in Column
      Learn more: [Expanding Nav Bar](https://stackoverflow.com/questions/56829162/bottom-navigation-bar-design-in-flutter-expand-an-icon-when-its-clicked)
- [x] Separating into components with proper props structuring practice.
- [x] `AspectRatio` is really good for card images.
- [x] `GestureDetector` for hover animations.
- [x] `BoxDecoration LinearGradient`
- [x] Disable Landscape Orientations:
  ```dart
    class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      return new MaterialApp(...);
    }
  }
  ```
