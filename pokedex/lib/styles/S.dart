import 'package:flutter/material.dart';

class S {
  static _Colors get colors => _Colors();
}

class _Colors {
  final primary = const Color.fromARGB(255, 220, 11, 44); // rgba(220,11,44,255)

  final pokemonType = {
    "bug": const Color.fromRGBO(139, 150, 15, 1), // rgba(139,150,15,255)
    "dark": const Color.fromRGBO(60, 46, 34, 1), // rgba(60,46,34,255)
    "dragon": const Color.fromRGBO(144, 93, 223, 1), // 114,93,223,255
    "electric": const Color.fromRGBO(245, 183, 32, 1), // 245,183,32,255
    "fairy": const Color.fromRGBO(222, 143, 224, 1), // 222,143,224,255
    "fighting": const Color.fromRGBO(129, 53, 26, 1), // 129,53,26,255
    "fire": const Color.fromRGBO(227, 56, 14, 1), // 227,56,14,255
    "flying": const Color.fromRGBO(134, 156, 237, 1), // 134,156,237,255
    "ghost": const Color.fromRGBO(93, 95, 176, 1), // 93,95,176,255
    "grass": const Color.fromRGBO(104, 188, 44, 1), // 104,188,44,255
    "ground": const Color.fromRGBO(206, 173, 83, 1), // 206,173,83,255
    "ice": const Color.fromRGBO(147, 225, 248, 1), // 147,225,248,255
    "normal": const Color.fromRGBO(196, 192, 182, 1), // 196,192,182,255
    "poison": const Color.fromRGBO(143, 69, 145, 1), // 143,69,145,255
    "psychic": const Color.fromRGBO(231, 77, 130, 1), // 231,77,130,255
    "rock": const Color.fromRGBO(176, 156, 82, 1), // 176,156,82,255
    "steel": const Color.fromRGBO(182, 183, 197, 1), // 182,183,197,255
    "water": const Color.fromRGBO(49, 147, 238, 1), // 49,147,238,255
  };
}
