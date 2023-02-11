import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      home: HomeScreen(),
    );
  }
}
