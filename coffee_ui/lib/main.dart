import 'package:coffee_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.inter().fontFamily,
        // textTheme:
        //     GoogleFonts.bebasNeueTextTheme(Theme.of(context).textTheme)),
      ),
      home: HomeScreen(),
    );
  }
}
