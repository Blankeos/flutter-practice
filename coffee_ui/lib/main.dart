import 'package:coffee_ui/screens/home_screen.dart';
import 'package:coffee_ui/styles/S.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.inter().fontFamily,
        colorScheme: ThemeData()
            .colorScheme
            .copyWith(primary: S.colors.primary, brightness: Brightness.dark),
        // textTheme:
        //     GoogleFonts.bebasNeueTextTheme(Theme.of(context).textTheme)),
      ),
      home: HomeScreen(),
    );
  }
}
